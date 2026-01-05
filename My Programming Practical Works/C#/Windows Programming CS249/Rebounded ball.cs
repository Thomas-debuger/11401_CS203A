using System;                          // 基本系統功能
using System.Collections.Generic;      // 泛型集合（這支程式其實沒用到）
using System.ComponentModel;           // 元件模型（WinForms設計時會用）
using System.Data;                     // 資料相關（這支程式沒用到）
using System.Drawing;                  // 繪圖用（顏色、Graphics、Rectangle）
using System.Linq;                     // LINQ（這支程式沒用到）
using System.Runtime.CompilerServices;// 編譯器服務（這支程式沒用到）
using System.Text;                     // 文字處理（這支程式沒用到）
using System.Threading.Tasks;          // 非同步（這支程式沒用到）
using System.Windows.Forms;            // WinForms 核心

namespace _1131417_HW4                 // 命名空間（專案名稱）
{
    public partial class Form1 : Form  // 主視窗，繼承 Form
    {
        // === 遊戲變數 ===

        Timer timer = new Timer();     // 建立一個計時器，控制遊戲更新
        int ballX = 150, ballY = 150;  // 球的 X、Y 座標
        int dx = 5, dy = 5;            // 球每次移動的速度（方向 + 大小）
        int ballSize = 20;             // 球的直徑
        int paddleWidth = 80, paddleHeight = 10; // 板子的寬與高
        int seconds = 0;               // 計時用（用 tick 累積）
        Color ballColor = Color.Red;   // 球的顏色，預設紅色
        bool gameOver = false;         // 是否遊戲結束

        Rectangle playRect;            // 活動區域的矩形範圍

        public Form1()                 // Form1 建構子（視窗一建立就執行）
        {
            InitializeComponent();     // 初始化設計工具拉的元件

            // === 基本設定 ===
            this.DoubleBuffered = true;            // 雙緩衝，避免畫面閃爍
            this.Paint += Form1_Paint;             // 畫面重繪時呼叫 Form1_Paint
            this.MouseMove += Form1_MouseMove;     // 滑鼠移動時觸發
            this.Resize += Form1_Resize;           // 視窗大小改變時觸發

            // Timer設定
            timer.Interval = 50;       // 每 50ms 觸發一次（約 20 FPS）
            timer.Tick += timer1_Tick; // 每次 Tick 呼叫 timer1_Tick
            timer.Start();             // 啟動計時器

            // 初始化狀態列
            toolStripStatusLabel1.Text = "0s";     // 顯示時間
            toolStripStatusLabel2.Text = "Playing!"; // 顯示遊戲狀態

            // ToolStrip按鈕事件（改變球顏色）
            toolStripButtonRed.Click += (s, e) => ballColor = Color.Red;   // 點紅色
            toolStripButtonGreen.Click += (s, e) => ballColor = Color.Green; // 點綠色
            toolStripButtonBlue.Click += (s, e) => ballColor = Color.Blue;  // 點藍色

            // MenuStrip事件（重新開始）
            restartToolStripMenuItem.Click += (s, e) => RestartGame(); // 點 Restart

            // 設定初始活動範圍
            SetPlayArea();             // 計算遊戲矩形範圍
        }

        private void SetPlayArea()     // 計算遊戲活動區域
        {
            int topOffset = menuStrip1.Height + toolStrip1.Height + 10; // 上方保留空間
            int marginBottom = statusStrip1.Height + 10;               // 下方保留空間

            int rectHeight = (int)((ClientSize.Height - topOffset - marginBottom) * 0.85); // 高度
            int rectWidth = (int)(rectHeight * 0.8); // 寬度依高度比例計算

            int maxWidth = (int)(ClientSize.Width * 0.9); // 最大寬度限制
            if (rectWidth > maxWidth) rectWidth = maxWidth; // 超過就縮小

            int rectX = (ClientSize.Width - rectWidth) / 2; // 水平置中
            int rectY = topOffset + 20;                     // 往下留空間

            playRect = new Rectangle(rectX, rectY, rectWidth, rectHeight); // 建立矩形
        }

        private void RestartGame()     // 重新開始遊戲
        {
            ballX = playRect.Left + playRect.Width / 2; // 球回到中間
            ballY = playRect.Top + playRect.Height / 2;
            dx = 5;                      // 重設速度
            dy = 5;
            seconds = 0;                 // 時間歸零
            gameOver = false;            // 解除 Game Over
            toolStripStatusLabel2.Text = "Playing!"; // 更新狀態
            timer.Start();               // 重新啟動計時器
            Invalidate();                // 強制重畫
        }

        private void timer1_Tick(object sender, EventArgs e) // 每 50ms 執行一次
        {
            if (gameOver) return;        // 遊戲結束就不更新

            ballX += dx;                // 球 X 移動
            ballY += dy;                // 球 Y 移動

            if (ballX < playRect.Left || ballX + ballSize > playRect.Right) // 左右牆
                dx = -dx;               // 反彈

            if (ballY < playRect.Top)   // 上牆
                dy = -dy;               // 反彈

            seconds++;                  // Tick 計數
            toolStripStatusLabel1.Text = $"{seconds / 20}s"; // 顯示秒數

            if (seconds % (20 * 5) == 0) // 每 5 秒
            {
                dx += Math.Sign(dx);    // 速度變快
                dy += Math.Sign(dy);
            }

            int paddleY = playRect.Bottom; // 板子 Y 座標
            int mouseX = PointToClient(MousePosition).X; // 滑鼠 X
            int paddleX = Math.Max(playRect.Left,
                           Math.Min(mouseX - paddleWidth / 2,
                           playRect.Right - paddleWidth)); // 限制板子範圍

            if (ballY + ballSize >= paddleY) // 球碰到底部
            {
                if (ballX + ballSize > paddleX && ballX < paddleX + paddleWidth) // 有接到
                {
                    dy = -Math.Abs(dy); // 向上反彈
                }
                else if (ballY + ballSize > playRect.Bottom + paddleHeight) // 掉下去
                {
                    gameOver = true;    // 遊戲結束
                    toolStripStatusLabel2.Text = "Game Over!";
                    timer.Stop();       // 停止計時器
                }
            }

            Invalidate();               // 重新畫畫面
        }

        private void Form1_Paint(object sender, PaintEventArgs e) // 畫畫面
        {
            Graphics g = e.Graphics;    // 取得 Graphics
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias; // 抗鋸齒

            using (Pen p = new Pen(Color.Black, 2)) // 畫矩形邊框
                g.DrawRectangle(p, playRect);

            using (SolidBrush brush = new SolidBrush(ballColor)) // 畫球
                g.FillEllipse(brush, ballX, ballY, ballSize, ballSize);

            int mouseX = PointToClient(MousePosition).X; // 滑鼠 X
            int paddleX = Math.Max(playRect.Left,
                           Math.Min(mouseX - paddleWidth / 2,
                           playRect.Right - paddleWidth)); // 板子 X
            int paddleY = playRect.Bottom; // 板子 Y

            g.FillRectangle(Brushes.Red, paddleX, paddleY, paddleWidth, paddleHeight); // 畫板子
        }

        private void Form1_MouseMove(object sender, MouseEventArgs e) // 滑鼠移動
        {
            Invalidate();               // 重畫（板子會跟著動）
        }

        private void Form1_Resize(object sender, EventArgs e) // 視窗大小改變
        {
            SetPlayArea();              // 重新計算活動區域
            Invalidate();               // 重畫
        }
    }
}
