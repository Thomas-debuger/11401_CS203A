using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _1131417_HW5
{
    public partial class Form1 : Form
    {
        List<Image> images = new List<Image>(); // 一個 List，存 8 種水果圖片，之後會「每種放兩張」
        // 用來記：第一張翻開的是誰，第二張翻開的是誰，null = 現在還沒有
        // 這裡存：第一張被點到的是哪一個 Label，第二張被點到的是哪一個 Label
        Label firstClicked = null; 
        Label secondClicked = null; 
        int matchedCount = 0; // 配對成功幾組
        int gameSeconds = 0; // 玩了幾秒
        Image defaultImage; // 預設背面圖片，所有卡片「還沒翻開」時顯示的圖
        public Form1()
        {
            InitializeComponent(); // 建立畫面（Label、Timer…）
            defaultImage = Properties.Resources.fruit_default; // 載入背面圖片
            StartNewGame(); // 開始新遊戲
        }
        private void StartNewGame()
        {
            // 重設狀態：回到「還沒翻任何牌」
            firstClicked = null;
            secondClicked = null;
            matchedCount = 0;
            gameSeconds = 0;

            // 停掉計時器：防止舊遊戲殘留影響
            timerFlipBack.Stop();
            timerGameTime.Stop();

            // 將八種水果圖片加入 List
            images.Clear();
            images.Add(Properties.Resources.apple);
            images.Add(Properties.Resources.tomato);
            images.Add(Properties.Resources.grape);
            images.Add(Properties.Resources.cherry);
            images.Add(Properties.Resources.orange);
            images.Add(Properties.Resources.pineapple);
            images.Add(Properties.Resources.watermelon);
            images.Add(Properties.Resources.banana);

            // 每種放兩張 → 共 16 張
            List<Image> total = new List<Image>();
            for (int i = 0; i < images.Count; i++)
            {
                Image img = images[i]; // 拿出第 i 張水果圖片
                total.Add(img);        // 放第一張
                total.Add(img);        // 再放一張（成對）
            }

            // 洗牌
            Random rnd = new Random(); // 準備一個「亂數產生器」
            for (int i = 0; i < total.Count; i++) // 從第 0 張卡片跑到最後一張
            {
                int j = rnd.Next(total.Count); // 隨機選一個位置(0-15)

                Image temp = total[i]; // 把第 i 張卡片先放進暫存盒子
                total[i] = total[j];   // 把第 j 張卡片放到第 i 格
                total[j] = temp;       // 把剛剛存起來的卡片放回第 j 格
            }

            // 分配到 TableLayoutPanel 16 個 Label，分配圖片給 16 個 Label
            for (int i = 0; i < tableLayoutPanel1.Controls.Count; i++)
            {
                Label lbl = (Label)tableLayoutPanel1.Controls[i]; // 拿到第 i 個 Label

                // 使用者看到的是 Image，程式知道的是 Tag
                lbl.Image = defaultImage;   // 顯示背面圖片
                lbl.Tag = total[i];         // 把第 i 張水果藏在 Tag 裡
                lbl.Enabled = true;         // 可以點
                lbl.BackColor = Color.White;

                // 先把舊的 Click 事件拿掉，再重新加一次，避免label重複執行多次Click
                lbl.Click -= label_Click; // 拿掉舊的
                lbl.Click += label_Click; // 加一次新的
                // 不管之前加了幾次Click，都會被清乾淨(全部移除)
            }

            // 重設時間顯示
            toolStripStatusLabel1.Text = "0";

            // 開始計時
            timerGameTime.Start();
        }

        /*
        每次你點一張卡片，這個函式就決定：
        1.能不能翻
        2.是第幾張
        3.要不要配對
        4.要不要翻回
        5.遊戲是不是結束
        */
        private void label_Click(object sender, EventArgs e)
        {
            // 當 Enabled 為 true 時，計時器會按照設定的時間間隔（Interval）觸發 Tick 事件。
            // 當 Enabled 為 false 時，計時器停止，不再觸發事件。
            // timerFlipBack.Start(); → 功能上等同於把 Enabled 設為 true，會開始計時。
            // timerFlipBack.Stop(); → 功能上等同於把 Enabled 設為 false，會停止計時。
            // 如果正在等翻回，什麼都不要做
            if (timerFlipBack.Enabled)
                return;

            // 確定點到的是 Label
            Label clickedLabel = sender as Label; // sender 代表「觸發這個事件的物件」，通常是點的那個 Label。
            // as Label 嘗試把 sender 轉型成 Label，如果成功，就存到 clickedLabel 變數；如果失敗，clickedLabel 會是 null。
            if (clickedLabel == null) // 防呆：如果 clickedLabel 是 null（代表 sender 不是 Label），就直接結束不做任何操作。
                return;

            // 如果這張已經翻開，就不處理
            if (clickedLabel.Image != defaultImage)
                return;

            // 翻開目前點到的卡片
            clickedLabel.Image = (Image)clickedLabel.Tag; //因為 Tag 是 object 類型，所以要轉型成 Image 才能用。

            // 如果還沒選第一張
            if (firstClicked == null)
            {
                firstClicked = clickedLabel;
                return;
            }

            // 如果還沒選第二張
            if (secondClicked == null)
            {
                secondClicked = clickedLabel;

                // 檢查兩張是不是同一種圖片
                if (firstClicked.Tag == secondClicked.Tag)
                {
                    matchedCount++;

                    // 配對成功，清空記錄，等待下一次點擊
                    firstClicked = null;
                    secondClicked = null;

                    // 如果 8 組都完成
                    if (matchedCount == 8)
                    {
                        timerGameTime.Stop();
                        MessageBox.Show("恭喜完成！總時間：" + gameSeconds + " 秒");
                    }
                }
                else
                {
                    // 配對失敗，1 秒後翻回
                    timerFlipBack.Start();
                }
            }
        }
        // 1 秒後翻回，Tick:每隔一段時間(1s)會自己執行程式碼
        // 每次 timerFlipBack 到達設定的時間（例如 1 秒），這段程式就會自動執行。
        private void timerFlipBack_Tick(object sender, EventArgs e)
        {
            timerFlipBack.Stop(); // → 停止計時器，避免重複執行。

            firstClicked.Image = defaultImage;  // ⭐ 翻回預設圖
            secondClicked.Image = defaultImage; // ⭐ 翻回預設圖

            firstClicked = null;
            secondClicked = null;
        }
        // 遊戲計時，Tick:每隔一段時間(1s)會自己執行程式碼
        private void timerGameTime_Tick(object sender, EventArgs e)
        {
            gameSeconds++;
            toolStripStatusLabel1.Text = gameSeconds.ToString();
            //this.Text = gameSeconds + " Seconds";   // 顯示在 Form 標題列
        }
        private void restartToolStripMenuItem_Click(object sender, EventArgs e)
        {
            StartNewGame();
        }
    }
}
