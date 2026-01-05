// Method1: 矩陣(畫面順暢)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _1131417_hw6_Final
{
    public partial class Form1 : Form
    {
        Bitmap backImage, backImageClone;  // 目前背景圖，用來做透明效果的背景圖（遊戲中不直接改原圖）
        Bitmap A, B, C;                     // 3張背景圖
        Bitmap Fruit1, Fruit2, Fruit3;      // 3種水果
        Bitmap bowl;                         // 碗的圖片
        int time, index;                     // 計時器用
        int D_time;                           // 倒數時間
        int Received;                         // 接到水果的數量
        Point MousePos;                       // 滑鼠位置，，決定碗的位置
        int X1, X2, X3;                       // 水果X座標
        int Y1, Y2, Y3;                       // 水果Y座標S
        public Form1()
        {
            InitializeComponent();
            A = Properties.Resources.Hydrangeas;
            B = Properties.Resources.Penguins;
            C = Properties.Resources.Tulips;
            bowl = Properties.Resources.Bowl;
            Fruit1 = Properties.Resources.Banana;
            Fruit2 = Properties.Resources.StawBerry;
            Fruit3 = Properties.Resources.Tomato;

            backImage = A;
            index = 0;
            DoubleBuffered = true;
            ClientSize = new Size(backImage.Width, backImage.Height + 100);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Interval = 1000; //timer1：每秒執行一次，用來計算遊戲時間和更換背景
            timer2.Interval = 50; //timer2：每 50 毫秒執行一次，用來控制水果掉落速度
            time = 0; //用來計算已經過的秒數，控制背景切換
            D_time = 121; //倒數計時，遊戲結束判斷用
            timer1.Start(); // 這兩行開始計時，讓計時器開始觸發 Tick 事件
            timer2.Start(); // 這兩行開始計時，讓計時器開始觸發 Tick 事件
            Random rd = new Random();
            // 每顆水果的水平位置（X1, X2, X3）在背景寬度範圍內隨機
            X1 = rd.Next(backImage.Width);
            X2 = rd.Next(backImage.Width);
            X3 = rd.Next(backImage.Width);
            // 每顆水果的垂直位置（Y1, Y2, Y3）在指定範圍內隨機，這樣一開始水果不會都在同一個高度
            Y1 = rd.Next(300);
            Y2 = rd.Next(200);
            Y3 = rd.Next(100);
            Received = 0; // 已接到的水果數量重置為 0
            // 原:M2:foreImageClone(); // 呼叫 foreImageClone() 生成一個半透明的背景圖
        }
        private void Form1_MouseMove(object sender, MouseEventArgs e)
        {
            MousePos = e.Location; // 滑鼠目前的座標，把它存到 MousePos，方便後面畫碗時使用
            // 把 MousePos.X 限制到最左邊距離為 碗的一半寬度
            if (MousePos.X < bowl.Width / 2)
                MousePos.X = bowl.Width / 2;
            // 把 MousePos.X 限制到最右邊距離為 背景寬度 - 碗的一半寬度
            else if (MousePos.X > backImage.Width - bowl.Width / 2)
                MousePos.X = backImage.Width - bowl.Width / 2;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            time++; // 每秒累加遊戲時間
            if (time % 10 == 0) // 每 10 秒執行一次換背景
            {
                index = (index + 1) % 3; // 保證值只會是 0、1、2
                // 根據 index 改變背景圖 (backImage = A/B/C)
                if (index == 0)
                    backImage = A;
                else if (index == 1)
                    backImage = B;
                else if (index == 2)
                    backImage = C;
                // 這裡不呼叫 Invalidate() 也沒問題，因為timer2已經在不停刷新畫面(50毫秒超快)，Paint裡的矩陣拿到的是最新的backImage
                // timer1_Tick 裡改了 backImage，下一次 timer2_Tick 觸發 Invalidate() 時，Form1_Paint 就會拿到最新的 backImage 去畫

                // 原:M2:foreImageClone(); // 生成半透明版本更新畫面
            }
            D_time = D_time - 1; // 每秒減 1 → 倒數計時
            label1.Text = "Remaining: " + D_time.ToString() + " Seconds";
            if (time == 120)
            {
                timer1.Stop(); // 背景與時間控制
                timer2.Stop(); // 水果掉落動畫
            }
        }
        private void timer2_Tick(object sender, EventArgs e)
        {
            // 每 50 毫秒，水果往下移動 10 個像素
            Y1 = Y1 + 10;
            Y2 = Y2 + 10;
            Y3 = Y3 + 10;
            Invalidate();
        }
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            // Method1: Fast 色彩調整矩陣
            if (backImage != null)
            {
                // 色彩調整矩陣
                float[][] cmArray1 =
                {
                  new float[] {1, 0, 0, 0,    0},
                  new float[] {0, 1, 0, 0,    0},
                  new float[] {0, 0, 1, 0,    0},
                  new float[] {0, 0, 0, 0.5f, 0},
                  new float[] {0, 0, 0, 0,    1}
                };
                ColorMatrix cm1 = new ColorMatrix(cmArray1);
                ImageAttributes ia1 = new ImageAttributes();
                ia1.SetColorMatrix(cm1, ColorMatrixFlag.Default, ColorAdjustType.Bitmap);
                // 繪出透明的背景影像
                Rectangle rectDest = new Rectangle(0, 0, backImage.Width, backImage.Height);
                e.Graphics.DrawImage(backImage, rectDest, 0, 0, backImage.Width, backImage.Height,
                    GraphicsUnit.Pixel, ia1);
            }
            // Method1 End

            // 原:M2:畫背景
            //Rectangle rectDest1 = new Rectangle(0, 0, backImageClone.Width, backImageClone.Height); // 表示畫在左上角，大小跟背景一樣
            //e.Graphics.DrawImage(backImageClone, rectDest1); // 用 backImageClone 畫整個背景

            // 畫碗
            // 這裡扣掉一半寬度是為了讓碗水平居中於滑鼠，垂直位置固定在背景下方
            Rectangle rectDest2 = new Rectangle(MousePos.X - bowl.Width / 2, backImage.Height - bowl.Height / 4 + 5, bowl.Width, bowl.Height);
            e.Graphics.DrawImage(bowl, rectDest2);
            Random rd = new Random();

            // 畫水果
            Rectangle rectDest3 = new Rectangle(X1, Y1, Fruit1.Width, Fruit1.Height);
            e.Graphics.DrawImage(Fruit1, rectDest3);
            Rectangle rectDest4 = new Rectangle(X2, Y2, Fruit2.Width, Fruit2.Height);
            e.Graphics.DrawImage(Fruit2, rectDest4);
            Rectangle rectDest5 = new Rectangle(X3, Y3, Fruit3.Width, Fruit3.Height);
            e.Graphics.DrawImage(Fruit3, rectDest5);

            // 當水果 Y 座標到達畫面底部附近 (Height - 30)，判斷水果 X 是否在碗的範圍內 → 如果是，Received++
            // 水果被接到或掉到地上後，重新生成一個隨機 X、Y 回到上方
            if (Y1 >= backImage.Height - 30)
            {
                if (X1 > MousePos.X - bowl.Width / 2 && X1 < (MousePos.X - bowl.Width / 2) + bowl.Width)
                    Received++;
                X1 = rd.Next(backImage.Width);
                Y1 = rd.Next(300);
            }

            if (Y2 >= backImage.Height - 30)
            {
                if (X2 > MousePos.X - bowl.Width / 2 && X2 < MousePos.X - bowl.Width / 2 + bowl.Width)
                    Received++;
                X2 = rd.Next(backImage.Width);
                Y2 = rd.Next(200);
            }

            if (Y3 >= backImage.Height - 30)
            {
                if (X3 > MousePos.X - bowl.Width / 2 && X3 < MousePos.X - bowl.Width / 2 + bowl.Width)
                    Received++;
                X3 = rd.Next(backImage.Width);
                Y3 = rd.Next(100);
            }
            label2.Text = "Received: " + Received.ToString();
        }
        // 原:M2:void foreImageClone()
        /*
        void foreImageClone()
        {
            // Method2: Slow 一個一個pixel改
            backImageClone = (Bitmap)backImage.Clone();
            int x1, y1;
            // 重設 img 的 圖素
            for (x1 = 0; x1 < backImageClone.Width; x1++)
            {
                for (y1 = 0; y1 < backImageClone.Height; y1++)
                {
                    Color pixelColor = backImageClone.GetPixel(x1, y1); // 得到圖素
                    Color newColor = pixelColor;
                    newColor = Color.FromArgb(pixelColor.A * 5 / 10, pixelColor.R * 10 / 10, pixelColor.G * 10 / 10, pixelColor.B * 10 / 10);
                    backImageClone.SetPixel(x1, y1, newColor); // 設定圖素
                }
            }
        }
        */
    }
}






/* Method2: 一個一個像素改(畫面卡頓)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _1131417_hw6_Final
{
    public partial class Form1 : Form
    {
        Bitmap backImage, backImageClone;  // 目前背景圖，用來做透明效果的背景圖（遊戲中不直接改原圖）
        Bitmap A, B, C;                     // 3張背景圖
        Bitmap Fruit1, Fruit2, Fruit3;      // 3種水果
        Bitmap bowl;                         // 碗的圖片

        int time, index;                     // 計時器用
        int D_time;                           // 倒數時間
        int Received;                         // 接到水果的數量

        Point MousePos;                       // 滑鼠位置，，決定碗的位置

        int X1, X2, X3;                       // 水果X座標

        int Y1, Y2, Y3;                       // 水果Y座標

        public Form1()
        {
            InitializeComponent();
            A = Properties.Resources.Hydrangeas;
            B = Properties.Resources.Penguins;
            C = Properties.Resources.Tulips;
            bowl = Properties.Resources.Bowl;
            Fruit1 = Properties.Resources.Banana;
            Fruit2 = Properties.Resources.StawBerry;
            Fruit3 = Properties.Resources.Tomato;

            backImage = A;
            index = 0;
            DoubleBuffered = true;
            ClientSize = new Size(backImage.Width, backImage.Height + 100);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Interval = 1000; //timer1：每秒執行一次，用來計算遊戲時間和更換背景
            timer2.Interval = 50; //timer2：每 50 毫秒執行一次，用來控制水果掉落速度
            time = 0; //用來計算已經過的秒數，控制背景切換
            D_time = 121; //倒數計時，遊戲結束判斷用
            timer1.Start(); // 這兩行開始計時，讓計時器開始觸發 Tick 事件
            timer2.Start(); // 這兩行開始計時，讓計時器開始觸發 Tick 事件
            Random rd = new Random();
            // 每顆水果的水平位置（X1, X2, X3）在背景寬度範圍內隨機
            X1 = rd.Next(backImage.Width);
            X2 = rd.Next(backImage.Width);
            X3 = rd.Next(backImage.Width);
            // 每顆水果的垂直位置（Y1, Y2, Y3）在指定範圍內隨機，這樣一開始水果不會都在同一個高度
            Y1 = rd.Next(300);
            Y2 = rd.Next(200);
            Y3 = rd.Next(100);
            Received = 0; // 已接到的水果數量重置為 0
            foreImageClone(); // 呼叫 foreImageClone() 生成一個半透明的背景圖
        }
        private void Form1_MouseMove(object sender, MouseEventArgs e)
        {
            MousePos = e.Location; // 滑鼠目前的座標，把它存到 MousePos，方便後面畫碗時使用
            // 把 MousePos.X 限制到最左邊距離為 碗的一半寬度
            if (MousePos.X < bowl.Width / 2) 
                MousePos.X = bowl.Width / 2;
            // 把 MousePos.X 限制到最右邊距離為 背景寬度 - 碗的一半寬度
            else if (MousePos.X > backImageClone.Width - bowl.Width / 2)
                MousePos.X = backImageClone.Width - bowl.Width / 2;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            time++; // 每秒累加遊戲時間
            if (time % 10 == 0) // 每 10 秒執行一次換背景
            {
                index = (index + 1) % 3; // 保證值只會是 0、1、2
                // 根據 index 改變背景圖 (backImage = A/B/C)
                if (index == 0)
                    backImage = A;
                else if (index == 1)
                    backImage = B;
                else if (index == 2)
                    backImage = C;
                foreImageClone(); // 生成半透明版本更新畫面
            }
            D_time = D_time - 1; // 每秒減 1 → 倒數計時
            label1.Text = "Remaining: " + D_time.ToString() + " Seconds";
            if (time == 120)
            {
                timer1.Stop(); // 背景與時間控制
                timer2.Stop(); // 水果掉落動畫
            }
        }
        private void timer2_Tick(object sender, EventArgs e)
        {
            // 每 50 毫秒，水果往下移動 10 個像素
            Y1 = Y1 + 10;
            Y2 = Y2 + 10;
            Y3 = Y3 + 10;
            Invalidate();
        }
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            // Method1: Fast 色彩調整矩陣
            if (backImage != null)
            {
                // 色彩調整矩陣
                float[][] cmArray1 =
               {
                  new float[] {1, 0, 0, 0,    0},
                  new float[] {0, 1, 0, 0,    0},
                  new float[] {0, 0, 1, 0,    0},
                  new float[] {0, 0, 0, 0.5f, 0},
                  new float[] {0, 0, 0, 0,    1}
               };
                ColorMatrix cm1 = new ColorMatrix(cmArray1);
                ImageAttributes ia1 = new ImageAttributes();
                ia1.SetColorMatrix(cm1,ColorMatrixFlag.Default,ColorAdjustType.Bitmap);
                // 繪出透明的背景影像
                Rectangle rectDest = new Rectangle(0, 0, backImage.Width, backImage.Height);
                e.Graphics.DrawImage(backImage,rectDest,0, 0, backImage.Width, backImage.Height,
                    GraphicsUnit.Pixel, ia1);
            }
            // Method1 End

            // 畫背景
            Rectangle rectDest1 = new Rectangle(0, 0, backImageClone.Width, backImageClone.Height); // 表示畫在左上角，大小跟背景一樣
            e.Graphics.DrawImage(backImageClone, rectDest1); // 用 backImageClone 畫整個背景

            // 畫碗
            // 這裡扣掉一半寬度是為了讓碗水平居中於滑鼠，垂直位置固定在背景下方
            Rectangle rectDest2 = new Rectangle(MousePos.X - bowl.Width / 2, backImageClone.Height - bowl.Height / 4 + 5, bowl.Width, bowl.Height);
            e.Graphics.DrawImage(bowl, rectDest2);
            Random rd = new Random();

            // 畫水果
            Rectangle rectDest3 = new Rectangle(X1, Y1, Fruit1.Width, Fruit1.Height);
            e.Graphics.DrawImage(Fruit1, rectDest3);
            Rectangle rectDest4 = new Rectangle(X2, Y2, Fruit2.Width, Fruit2.Height);
            e.Graphics.DrawImage(Fruit2, rectDest4);
            Rectangle rectDest5 = new Rectangle(X3, Y3, Fruit3.Width, Fruit3.Height);
            e.Graphics.DrawImage(Fruit3, rectDest5);

            // 當水果 Y 座標到達畫面底部附近 (Height - 30)，判斷水果 X 是否在碗的範圍內 → 如果是，Received++
            // 水果被接到或掉到地上後，重新生成一個隨機 X、Y 回到上方
            if (Y1 >= backImageClone.Height - 30)
            {
                if (X1 > MousePos.X - bowl.Width / 2 && X1 < (MousePos.X - bowl.Width / 2) + bowl.Width)
                    Received++;
                X1 = rd.Next(backImage.Width);
                Y1 = rd.Next(300);
            }

            if (Y2 >= backImageClone.Height - 30)
            {
                if (X2 > MousePos.X - bowl.Width / 2 && X2 < MousePos.X - bowl.Width / 2 + bowl.Width)
                    Received++;
                X2 = rd.Next(backImage.Width);
                Y2 = rd.Next(200);
            }

            if (Y3 >= backImageClone.Height - 30)
            {
                if (X3 > MousePos.X - bowl.Width / 2 && X3 < MousePos.X - bowl.Width / 2 + bowl.Width)
                    Received++;
                X3 = rd.Next(backImage.Width);
                Y3 = rd.Next(100);
            }
            label2.Text = "Received: " + Received.ToString();
        }
        void foreImageClone()
        {
            // Method2: Slow 一個一個pixel改
            backImageClone = (Bitmap)backImage.Clone();
            int x1, y1;
            // 重設 img 的 圖素
            for (x1 = 0; x1 < backImageClone.Width; x1++)
            {
                for (y1 = 0; y1 < backImageClone.Height; y1++)
                {
                    Color pixelColor = backImageClone.GetPixel(x1, y1); // 得到圖素
                    Color newColor = pixelColor;
                    newColor = Color.FromArgb(pixelColor.A * 5 / 10, pixelColor.R * 10 / 10, pixelColor.G * 10 / 10, pixelColor.B * 10 / 10);
                    backImageClone.SetPixel(x1, y1, newColor); // 設定圖素
                }
            }
        }
        
    }
}
*/
