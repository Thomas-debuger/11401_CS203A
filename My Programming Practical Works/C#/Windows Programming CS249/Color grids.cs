using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HW1_彩色九宮格
{
    public partial class Form1 : Form
    {
        Random rd = new Random();
        public Form1()
        //這是Form1類別的建構子，想像成「這個視窗程式剛開啟時，要先做的準備工作」。
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button1.BackColor = Color.FromArgb(a, b, c);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button2.BackColor = Color.FromArgb(a, b, c);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button3.BackColor = Color.FromArgb(a, b, c);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button4.BackColor = Color.FromArgb(a, b, c);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button5.BackColor = Color.FromArgb(a, b, c);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button6.BackColor = Color.FromArgb(a, b, c);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button7.BackColor = Color.FromArgb(a, b, c);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button8.BackColor = Color.FromArgb(a, b, c);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            int a = rd.Next(256);
            int b = rd.Next(256);
            int c = rd.Next(256);
            button9.BackColor = Color.FromArgb(a, b, c);
        }
    }
}






/*
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HW1_彩色九宮格
{
    public partial class Form1 : Form
    {
        private const int rectSize = 50; // 每個矩形的寬高
        private const int gridRows = 3;
        private const int gridCols = 3;
        private Rectangle[,] gridRects = new Rectangle[gridRows, gridCols]; // 九宮格矩形
        private SolidBrush[,] gridBrushes = new SolidBrush[gridRows, gridCols]; // 每個矩形的筆刷
        private Random rand = new Random();
        //Rectangle → 矩形結構，用來存位置和大小，屬於 System.Drawing。例如：Rectangle(x, y, width, height)
        //[,] → 二維陣列。因為九宮格有 3x3，所以用 [3,3]
        //gridRects → 變數名稱，存每一格矩形的位置和大小
        //new Rectangle[gridRows, gridCols] → 建立一個 3x3 的矩形陣列
        //意思簡單說：我需要一個 3x3 的格子，每格存它的位置和大小，用 gridRects 來存

        //SolidBrush → 畫圖用的「筆刷」，可以填充顏色
        //[,] → 二維陣列，對應每個矩形
        //gridBrushes[i,j] → 存第 i 列 j 欄矩形的顏色筆刷
        //意思簡單說：每個矩形都需要顏色，這個陣列存每格矩形的顏色筆刷

        //Random 是 C# 裡內建的一個「亂數生成器類別（class）」。
        //rand 是自己定義的變數名稱，它的類型是 Random，它會「控制隨機數產生器」，每次你叫它.Next()就會產生新的亂數
        //new → 在記憶體中創造一個新的物件
        //Random() → 呼叫 Random 類別的建構子，建立一個新的亂數生成器
        //結合起來 → new Random() 就是「創造一個全新的亂數生成器物件」
        //可利用rand.Next()來產生隨機數

        public Form1()
        //這是Form1類別的建構子，想像成「這個視窗程式剛開啟時，要先做的準備工作」。
        {
            InitializeComponent();

            this.Text = "九宮格亂數顏色";
            this.Size = new Size(250, 250);

            // 初始化九宮格矩形位置與顏色
            //這裡只是準備資料，把九宮格的矩形和顏色記錄下來，沒有真正畫到螢幕上。
            for (int i = 0; i < gridRows; i++)
            {
                for (int j = 0; j < gridCols; j++)
                {
                    gridRects[i, j] = new Rectangle(j * rectSize , i * rectSize , rectSize, rectSize); 
                    gridBrushes[i, j] = new SolidBrush(RandomColor());
                }
            }

            this.Paint += Form1_Paint;//「當表單發出"我要重繪"的通知時，請通知Form1_Paint方法來執行」。「當 this.Paint 事件發生時，請幫我呼叫 Form1_Paint 這個方法」。意思：每當表單需要被重繪(刷新)時，就會執行 Form1_Paint。
            this.MouseDown += Form1_MouseDown;//把表單的 MouseDown 事件綁定到 Form1_MouseDown 方法。意思：每當使用者在表單上點滑鼠，就會執行 Form1_MouseDown。這就是為什麼你能點某個格子，它會換新顏色。
            //需要畫畫時，去 Form1_Paint 畫。
            //滑鼠點擊時，去 Form1_MouseDown 處理。
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            // 畫出九宮格矩形
            //這裡是真正畫圖的階段，把前面準備好的矩形和顏色顯示在表單上。
            for (int i = 0; i < gridRows; i++)
            {
                for (int j = 0; j < gridCols; j++)
                {
                    e.Graphics.FillRectangle(gridBrushes[i, j], gridRects[i, j]);
                    e.Graphics.DrawRectangle(Pens.Black, gridRects[i, j]); // 加黑色邊框好看
                }
                //Form1 = 畫布
                //PaintEventArgs e = 畫畫的環境(系統準備好的資訊)
                //e.Graphics = 畫筆工具，你要透過它來畫
            }
        }

        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            // 檢查滑鼠是否點到某個矩形
            for (int i = 0; i < gridRows; i++)
            {
                for (int j = 0; j < gridCols; j++)
                {
                    //.Contains(e.Location)：檢查「滑鼠點下去的座標」是不是在這個矩形範圍內。如果點中了某個矩形，就會進到 if 裡。e.Location：滑鼠按下去的座標 (相對於 Form 左上角)。
                    if (gridRects[i, j].Contains(e.Location))
                    {
                        // 換成新的亂數顏色
                        gridBrushes[i, j].Dispose();
                        gridBrushes[i, j] = new SolidBrush(RandomColor());
                        this.Invalidate();//Invalidate()：要求系統重新繪製整個 Form。下一次會自動呼叫 Form1_Paint，於是你就能看到新的顏色矩形。
                        //在 MouseDown 事件裡 改了矩形的顏色。但程式本身 不會自動刷新畫面。所以需要呼叫 Invalidate()，強迫系統再執行一次 Form1_Paint，把新顏色畫出來。
                        return; //一旦找到被點中的矩形，就不用再檢查其他格子。return 會直接跳出整個 Form1_MouseDown 函式。
                    }
                }
            }
        }

        private Color RandomColor()
        {
            return Color.FromArgb(rand.Next(256), rand.Next(256), rand.Next(256));
        }
        //RGB 顏色的範圍是 0~255，所以我們要 0~255 的亂數。
        //Color.FromArgb(int r, int g, int b)，建立一個顏色，輸入 紅(R)、綠(G)、藍(B) 三個數值。
        //0 → 沒有這個顏色分量，255 → 這個顏色分量最強。把三個數字組合成一個顏色，並回傳。
    }
}
*/
