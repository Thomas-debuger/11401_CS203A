using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Imaging; // ColorMatrix

namespace wp_12_1_1131417
{
    public partial class Form1 : Form
    {
        int w, h, x0, y0, pen_width = 1; // w,h圖片寬高。x0,y0滑鼠起始座標 用於畫線、矩形、圓形
        Bitmap img1, img2, BackupImg, BackupImg2; // img1,img2用於存圖片，img2 是暫存方便畫圖。BackupImg,BackupImg2 存復原用的圖片
        Pen p;
        int tools = 0; //（0: 點, 1: 線, 2: 矩形, 3: 圓）
        Color c = Color.Black; // 畫筆顏色

        Bitmap originalImage; // 存原始圖片，用於自訂色彩
        float r1 = 1f, g1 = 1f, b1 = 1f, a1 = 1f; // 自訂 RGBA 係數
        bool fill; // 是否填滿矩形/圓形
        SolidBrush myBrush = new SolidBrush(Color.White); // 填滿顏色用的刷子
        Color b; // 填滿顏色存放用
        public Form1()
        {
            InitializeComponent();
            DoubleBuffered = true;
            p = new Pen(c, pen_width);
            toolStripStatusLabel1.Text = "Width: " + w.ToString() + ", Height: " + h.ToString();
            toolStripStatusLabel3.Text = "Pen: " + c.ToString();
            toolStripStatusLabel4.Text = "Brush: " + b.ToString();
            復原ToolStripMenuItem.Enabled = false;
            取消復原ToolStripMenuItem.Enabled = false;
            fill = false;
        }

        private void 開啟檔案ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)  // 開啟影像檔
            {
                String input = openFileDialog1.FileName; // 取得檔名
                img1 = (Bitmap)Image.FromFile(input); // 讀圖片成 Bitmap
                w = img1.Width;
                h = img1.Height;
                if ((ClientSize.Width < w) || (ClientSize.Height < h))
                    ClientSize = new Size(w, h + 56);
                pictureBox1.Image = img1;
                pictureBox1.Refresh(); // 要求重畫
                toolStripStatusLabel1.Text = "Width: " + w.ToString() + ", Height: " + h.ToString();
            }
        }
        private void pictureBox1_MouseMove(object sender, MouseEventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                if ((e.X < w) && (e.Y < h) && (e.X > 0) && (e.Y > 0))
                {
                    toolStripStatusLabel2.Text = e.Location.ToString(); // 顯示滑鼠座標
                }
                else
                {
                    toolStripStatusLabel2.Text = "{,}";
                }
            }
            if (e.Button == MouseButtons.Left)
            {
                if (tools == 0)
                {
                    //Method 1: 直接改pictureBox1的圖
                    Graphics g = Graphics.FromImage(pictureBox1.Image); // 從 PictureBox 的圖片建立畫布
                    if ((e.X < w) && (e.Y < h) && (e.X > 0) && (e.Y > 0))
                    {
                        g.DrawLine(p, x0, y0, e.X, e.Y);
                        x0 = e.X; y0 = e.Y; // 更新起點
                        pictureBox1.Refresh(); // 重畫 PictureBox
                    }
                }
                else if (tools == 1)
                {
                    if ((e.X < w) && (e.Y < h) && (e.X > 0) && (e.Y > 0))
                    {
                        //Method 2: 複製一份點陣圖，最後再放回pictureBox1
                        Bitmap tempImg = (Bitmap)img2.Clone(); // 複製一份暫存圖
                        Graphics gg = Graphics.FromImage(tempImg); // 用暫存圖產生畫布
                        gg.DrawLine(p, x0, y0, e.X, e.Y);
                        pictureBox1.Image = tempImg; // 把暫存圖放回 PictureBox
                        pictureBox1.Refresh();
                    }
                }
                else if (tools == 2)
                {
                    if ((e.X < w) && (e.Y < h) && (e.X > 0) && (e.Y > 0))
                    {
                        //Method 2: 複製一份點陣圖，最後再放回pictureBox1
                        Bitmap tempImg = (Bitmap)img2.Clone();
                        Graphics gg = Graphics.FromImage(tempImg);
                        // 避免滑鼠往左上拖時產生負寬高。
                        int rectX = Math.Min(x0, e.X);
                        int rectY = Math.Min(y0, e.Y);
                        int rectW = Math.Abs(e.X - x0);
                        int rectH = Math.Abs(e.Y - y0);
                        if (fill)
                            gg.FillRectangle(myBrush, new Rectangle(rectX, rectY, rectW, rectH));
                        else
                            gg.DrawRectangle(p, rectX, rectY, rectW, rectH);

                        pictureBox1.Image = tempImg;
                        pictureBox1.Refresh();
                    }
                }
                else if (tools == 3)
                {
                    if ((e.X < w) && (e.Y < h) && (e.X > 0) && (e.Y > 0))
                    {
                        //Method 2: 複製一份點陣圖，最後再放回pictureBox1
                        Bitmap tempImg = (Bitmap)img2.Clone();
                        Graphics gg = Graphics.FromImage(tempImg);
                        // 避免滑鼠往左上拖時產生負寬高。
                        int rectX = Math.Min(x0, e.X);
                        int rectY = Math.Min(y0, e.Y);
                        int rectW = Math.Abs(e.X - x0);
                        int rectH = Math.Abs(e.Y - y0);
                        if (fill)
                            gg.FillEllipse(myBrush, new Rectangle(rectX, rectY, rectW, rectH));
                        else
                            gg.DrawEllipse(p, rectX, rectY, rectW, rectH); /// Error

                        pictureBox1.Image = tempImg;
                        pictureBox1.Refresh();
                    }
                }
            }
        }

        //這個函式用來改變圖片的顏色（例如變灰階、變亮或變暗），是透過 ColorMatrix（色彩矩陣）來操作圖片的 RGB(A) 值。
        public Bitmap ConvertCM(Image image, ColorMatrix cm)
        {
            Bitmap dest = new Bitmap(image.Width, image.Height); // 建立一張和原圖一樣大小的空白圖片
            Graphics g = Graphics.FromImage(dest); // 從點陣圖 建立 新的畫布
            // cm 定義含有 RGBA 空間座標的 5 x 5 矩陣
            // (R, G, B, A, 1) 乘上 此矩陣
            // ImageAttributes 類別的多個方法會使用色彩矩陣來調整影像色彩
            ImageAttributes ia = new ImageAttributes();
            // 設定預設分類的色彩調整矩陣。
            ia.SetColorMatrix(cm); // 這樣後面畫圖時就會按照這個矩陣改顏色
            g.DrawImage(image, new Rectangle(0, 0, image.Width, image.Height), 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, ia);
            // 目標區，來源區
            g.Dispose(); //清掉畫布與點陣圖變數的連結，畫布用完要釋放資源，避免記憶體被吃掉

            BackupImg = (Bitmap)pictureBox1.Image.Clone(); // 存下原圖，方便之後按「復原」回到之前的樣子
            復原ToolStripMenuItem.Enabled = true;

            return dest;
        }
        private void 灰階ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                ColorMatrix cm = new ColorMatrix(
                       new float[][]{ new float[]{0.33f, 0.33f, 0.33f, 0, 0},
                                  new float[]{0.33f, 0.33f, 0.33f, 0, 0},
                                  new float[]{0.33f, 0.33f, 0.33f, 0, 0},
                                  new float[]{  0,    0,    0,  1, 0},
                                  new float[]{  0,    0,    0,  0, 1}});
                pictureBox1.Image = ConvertCM(pictureBox1.Image, cm);
            }

        }

        private void 負片ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                ColorMatrix cm = new ColorMatrix(
                   new float[][]{ new float[]{ -1f,    0,    0,  0, 0},
                                  new float[]{  0,   -1f,    0,  0, 0},
                                  new float[]{  0,    0,   -1f,  0, 0},
                                  new float[]{  0,    0,    0,  1, 0},
                                  new float[]{  1,    1,    1,  0, 1}});
                pictureBox1.Image = ConvertCM(pictureBox1.Image, cm);
            }
        }
        private void 自訂ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image == null) return;

            // 如果 originalImage 還沒存，就存一次
            // originalImage 只存一次，保留最初的圖片
            // 這樣每次修改顏色都是從原圖出發，而不是在已經改過的圖片上疊加
            if (originalImage == null)
                originalImage = (Bitmap)pictureBox1.Image.Clone();

            Form3 x = new Form3();
            x.TopMost = true;  //移到最上層
            x.Text = "設定RGB"; //Form3 的標題

            // 將上次的RGBA值給Form3初始化
            // 把上一次的 R、G、B、A 值給 Form3
            // 這樣滑桿位置會記住上次調整的數值
            x.SetValues(r1, g1, b1, a1);

            if (x.ShowDialog() == DialogResult.OK) // ShowDialog()會暫停程式，直到使用者按下「OK」回傳DialogResult.OK
            {
                // 透過 Form3 的函式拿到使用者調整的值，範圍0~2
                r1 = x.getR();
                g1 = x.getG();
                b1 = x.getB();
                a1 = x.getA();

                // 每次都從 originalImage 重新套用 ColorMatrix
                ColorMatrix cm = new ColorMatrix(
                new float[][]{
                new float[]{ r1, 0, 0, 0, 0},
                new float[]{ 0, g1, 0, 0, 0},
                new float[]{ 0, 0, b1, 0, 0},
                new float[]{ 0, 0, 0, a1, 0},
                new float[]{ 0, 0, 0, 0, 1}
                });

                pictureBox1.Image = ConvertCM(originalImage, cm); // 呼叫前面寫好的 ConvertCM 函式，把原圖套上自訂的色彩矩陣
            }
        }
        private void 增亮ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                ColorMatrix cm = new ColorMatrix(
                   new float[][]{ new float[]{  1.1f,    0,    0,  0, 0},
                                  new float[]{  0,    1.1f,    0,  0, 0},
                                  new float[]{  0,    0,    1.1f,  0, 0},
                                  new float[]{  0,    0,    0,  1, 0},
                                  new float[]{  0,    0,    0,  0, 1}});
                pictureBox1.Image = ConvertCM(pictureBox1.Image, cm);
            }
        }

        private void 一半ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BackupImg = (Bitmap)pictureBox1.Image.Clone(); // 做任何影像處理前，先把現在的圖片存起來
            復原ToolStripMenuItem.Enabled = true; // 之後按「復原」才能回到這一步

            w = pictureBox1.Image.Width;
            h = pictureBox1.Image.Height;
            img1 = (Bitmap)pictureBox1.Image; // 目前正在處理的圖片
            Bitmap p = new Bitmap(w / 2, h / 2); // 新建一張 寬、高都只有原來一半 的空白圖片
            // version 1
            for (int i = 0; i < w && (i + 2 < w); i += 2)
                for (int j = 0; j < h && (j + 2 < h); j += 2)
                {
                    Color c = img1.GetPixel(i, j);
                    int i2 = i / 2;
                    int j2 = j / 2;
                    p.SetPixel(i2, j2, c);
                }
            /*version 2: DrawImage 把迴圈整段刪掉
            Graphics g1 = Graphics.FromImage(p);// 建立畫布，畫在新圖 p 上，把 p 當畫布
            g1.DrawImage(img1, new Rectangle(0, 0, w / 2, h / 2));// 把原圖畫成「一半大小」
            g.Dispose();// 用完畫布就釋放
            */
            pictureBox1.Image = p; // 顯示新圖
            img1 = p;
            w = p.Width;
            h = p.Height;
            pictureBox1.Refresh();
            toolStripStatusLabel1.Text = "Width: " + w.ToString() + ", Height: " + h.ToString();
        }

        private void 兩倍ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BackupImg = (Bitmap)pictureBox1.Image.Clone();
            復原ToolStripMenuItem.Enabled = true;

            w = pictureBox1.Image.Width;
            h = pictureBox1.Image.Height;
            Bitmap p = new Bitmap(w * 2, h * 2);
            img1 = (Bitmap)pictureBox1.Image;
            //version 1
            for (int i = 0; i < w; i++)
                for (int j = 0; j < h; j++)
                {
                    Color c = img1.GetPixel(i, j);
                    for (int ii = 0; ii < 2; ii++)
                        for (int jj = 0; jj < 2; jj++)
                            p.SetPixel(i * 2 + ii, j * 2 + jj, c); //垂直與水平方向都重複畫兩遍
                }
            /* version 2: DrawImage 把迴圈整段刪掉
            Graphics g1 = Graphics.FromImage(p);
            g1.DrawImage(img1, new Rectangle(0, 0, w * 2, h * 2));
            g.Dispose();
            */
            pictureBox1.Image = p; // 顯示新圖
            img1 = p;
            w = p.Width;
            h = p.Height;
            pictureBox1.Refresh();
            toolStripStatusLabel1.Text = "Width: " + w.ToString() + ", Height: " + h.ToString();
            if ((ClientSize.Width < w) || (ClientSize.Height < (h + 56))) // 視窗不夠大就放大
                ClientSize = new Size(w, h + 56);
        }
        private void 調暗ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                ColorMatrix cm = new ColorMatrix(
                   new float[][]{ new float[]{  0.9f,    0,    0,  0, 0},
                                  new float[]{  0,    0.9f,    0,  0, 0},
                                  new float[]{  0,    0,    0.9f,  0, 0},
                                  new float[]{  0,    0,    0,  1, 0},
                                  new float[]{  0,    0,    0,  0, 1}});
                pictureBox1.Image = ConvertCM(pictureBox1.Image, cm);
            }
        }
        private void 開啟新檔ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form2 x = new Form2();
            x.TopMost = true;  //移到最上層
            x.Text = "設定畫布的寬與高"; //Form2 的標題
            x.ShowDialog();    // Show Form2，一定要用這個
            w = x.getWidth();
            h = x.getHeight();
            if (w != -1)
            {
                img1 = new Bitmap(w, h); // 建立一張 寬 = w、高 = h 的空白圖片
                pictureBox1.Image = img1;
                Graphics g = Graphics.FromImage(pictureBox1.Image);
                g.Clear(Color.White);
                pictureBox1.Refresh(); // 要求重畫
                if ((ClientSize.Width < w) || (ClientSize.Height < (h + 56)))
                    ClientSize = new Size(w, h + 56);
                toolStripStatusLabel1.Text = "Width: " + w.ToString() + ", Height: " + h.ToString();
            }
        }

        private void 儲存ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
                if (saveFileDialog1.ShowDialog() == DialogResult.OK) // 使用者按「儲存」才繼續，按「取消」就什麼都不做
                {
                    String output = saveFileDialog1.FileName; // 取得使用者選的路徑
                    pictureBox1.Image.Save(output); // 把 PictureBox 裡的圖片存檔
                    img1 = (Bitmap)pictureBox1.Image;
                }
        }
        private void 顏色ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog1.ShowDialog() == DialogResult.OK)
            {
                c = colorDialog1.Color;
                p = new Pen(c, pen_width);
                toolStripStatusLabel3.Text = "Pen: " + c.ToString();
            }
        }

        private void 點ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            點ToolStripMenuItem.Checked = true;
            直線ToolStripMenuItem.Checked = false;
            矩形ToolStripMenuItem.Checked = false;
            圓ToolStripMenuItem.Checked = false;
            tools = 0;
        }

        private void 直線ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            點ToolStripMenuItem.Checked = false;
            直線ToolStripMenuItem.Checked = true;
            矩形ToolStripMenuItem.Checked = false;
            圓ToolStripMenuItem.Checked = false;
            tools = 1;
        }
        private void 矩形ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            點ToolStripMenuItem.Checked = false;
            直線ToolStripMenuItem.Checked = false;
            矩形ToolStripMenuItem.Checked = true;
            圓ToolStripMenuItem.Checked = false;
            tools = 2;
        }

        private void 圓ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            點ToolStripMenuItem.Checked = false;
            直線ToolStripMenuItem.Checked = false;
            矩形ToolStripMenuItem.Checked = false;
            圓ToolStripMenuItem.Checked = true;
            tools = 3;
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            pen_width = 1;
            toolStripMenuItem2.Checked = true;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            p = new Pen(c, pen_width);
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            pen_width = 2;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = true;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            p = new Pen(c, pen_width);
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            pen_width = 3;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = true;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            p = new Pen(c, pen_width);
        }

        private void toolStripMenuItem5_Click(object sender, EventArgs e)
        {
            pen_width = 4;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = true;
            toolStripMenuItem6.Checked = false;
            p = new Pen(c, pen_width);
        }

        private void toolStripMenuItem6_Click(object sender, EventArgs e)
        {
            pen_width = 5;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = true;
            p = new Pen(c, pen_width);
        }

        private void pictureBox1_MouseDown(object sender, MouseEventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                x0 = e.X;
                y0 = e.Y;
                img2 = (Bitmap)pictureBox1.Image.Clone(); // 複製一份目前的圖片，用在「拖曳畫線 / 畫框」，MouseMove 時畫圖時的底圖
                BackupImg = (Bitmap)pictureBox1.Image.Clone(); // 在「動手畫之前」把目前畫面存起來，之後才能按「復原」
            }
        }
        private void pictureBox1_MouseUp(object sender, MouseEventArgs e)
        {
            復原ToolStripMenuItem.Enabled = true;
        }
        private void 復原ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            復原ToolStripMenuItem.Enabled = false;
            取消復原ToolStripMenuItem.Enabled = true;
            BackupImg2 = (Bitmap)pictureBox1.Image; // 把「目前這張圖」存起來，「復原之前的畫面」
            pictureBox1.Image = BackupImg; // 把圖片換成「畫之前存的那一張」
            pictureBox1.Refresh();
        }

        private void 取消復原ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            復原ToolStripMenuItem.Enabled = true;
            取消復原ToolStripMenuItem.Enabled = false;
            pictureBox1.Image = BackupImg2; // 把圖片換回：「復原之前的畫面」
            pictureBox1.Refresh();
        }
        private void 顏色ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (colorDialog2.ShowDialog() == DialogResult.OK)
            {
                b = colorDialog2.Color;
                myBrush = new SolidBrush(b);
                toolStripStatusLabel4.Text = "Brush: " + b.ToString();
            }
        }
        private void 填滿ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            填滿ToolStripMenuItem.Checked = true;
            無填滿ToolStripMenuItem.Checked = false;
            fill = true;
        }

        private void 無填滿ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            填滿ToolStripMenuItem.Checked = false;
            無填滿ToolStripMenuItem.Checked = true;
            fill = false;
        }
    }
}
