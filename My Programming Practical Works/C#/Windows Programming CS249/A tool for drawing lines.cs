using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Drawing.Drawing2D;

namespace _1131417_HW3
{
    public partial class Form1 : Form
    {
        //=================【全域變數區】=================
        // 儲存所有線段的起點與終點
        List<Point> startPt = new List<Point>();
        List<Point> endPt = new List<Point>();
        Point p1; // 滑鼠按下時暫存點

        // 每條線段的屬性：顏色、線型、寬度
        List<Color> colorPt = new List<Color>();  // 每條線的顏色
        List<Color> setcolor = new List<Color>(3); // 可選的三種顏色 (紅/綠/藍)
        List<bool> solid = new List<bool>();       // 線條是否為實線(true)/虛線(false)
        List<int> width = new List<int>();         // 線條粗細 (1~5)

        // 當前設定 (目前選的線寬、顏色、樣式)
        int index = 0;               // 顏色索引
        Color linecolor = Color.Red; // 預設紅色
        bool lineSolid = true;       // 預設實線
        int lineWidth = 3;           // 預設寬度為3

        //=================【建構子】=================
        public Form1()
        {
            InitializeComponent();  // 初始化表單元件
        }

        //=================【檔案儲存功能】=================
        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //★儲存與讀取的順序必須完全一致！
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                String s = saveFileDialog1.FileName;

                // 用 BinaryWriter 以二進位方式建立新檔案
                BinaryWriter outFile = new BinaryWriter(File.Open(s, FileMode.Create));

                // 寫入線段總數
                outFile.Write(endPt.Count());

                // 逐筆寫入每條線的屬性資料
                for (int i = 0; i < endPt.Count(); i++)
                {
                    outFile.Write(startPt[i].X);          // 起點X
                    outFile.Write(startPt[i].Y);          // 起點Y
                    outFile.Write(endPt[i].X);            // 終點X
                    outFile.Write(endPt[i].Y);            // 終點Y
                    outFile.Write(colorPt[i].ToArgb());   // 顏色(整數格式)
                    //.ToArgb() = 把顏色變成一個整數(用來存檔)，範例：Color.Red.ToArgb() → -65536
                    outFile.Write(solid[i]);              // 線條是否實線
                    outFile.Write(width[i]);              // 線寬
                }
                outFile.Close(); // 關閉檔案
            }
        }

        //=================【檔案載入功能】=================
        private void loadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //★載入時順序也要完全對應儲存時的順序
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                String s = openFileDialog1.FileName;
                if (!File.Exists(s)) return; // 若檔案不存在則中止

                BinaryReader inFile = new BinaryReader(File.Open(s, FileMode.Open));

                // 清空舊資料
                startPt.Clear();
                endPt.Clear();
                colorPt.Clear();
                solid.Clear();
                width.Clear();

                // 讀取線段數量
                int n = inFile.ReadInt32();

                // 逐筆讀取線段資料
                for (int i = 0; i < n; i++)
                {
                    startPt.Add(new Point(inFile.ReadInt32(), inFile.ReadInt32()));  // 起點，需要new Point(x, y)建立新座標物件
                    endPt.Add(new Point(inFile.ReadInt32(), inFile.ReadInt32()));    // 終點
                    colorPt.Add(Color.FromArgb(inFile.ReadInt32()));                 // 顏色
                    //.FromArgb() = 把整數還原成顏色(用來讀檔)，範例：Color.FromArgb(-65536) → Color.Red
                    solid.Add(inFile.ReadBoolean());                                 // 線型，bool是基本型別，不需用new建立
                    width.Add(inFile.ReadInt32());                                   // 線寬，int是基本型別，不需用new建立
                }

                inFile.Close();
                Invalidate(); //★呼叫重繪事件 -> 觸發 Form1_Paint
            }
        }

        //=================【清除畫面】=================
        private void clearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            startPt.Clear();
            endPt.Clear();
            colorPt.Clear();
            solid.Clear();
            width.Clear();
            Invalidate(); // 重畫畫面（會清空線條）
        }

        //=================【表單載入事件】=================
        private void Form1_Load(object sender, EventArgs e)
        {
            // 初始化可選顏色
            setcolor.Add(Color.Red);
            setcolor.Add(Color.Green);
            setcolor.Add(Color.Blue);

            // 設定檔案對話框的檔案格式篩選器
            openFileDialog1.Filter = "線段檔(*.pnt)|*.pnt";
            saveFileDialog1.Filter = "線段檔(*.pnt)|*.pnt";

            //★預設狀態設定
            redToolStripMenuItem.Checked = true;
            solidToolStripMenuItem.Checked = true;
            toolStripMenuItem4.Checked = true; // 線寬3為預設
        }

        //=================【顏色選擇事件】=================
        private void redToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 0;
            linecolor = setcolor[index]; // 設為紅色
            redToolStripMenuItem.Checked = true;
            greenToolStripMenuItem.Checked = false;
            blueToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void greenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 1;
            linecolor = setcolor[index]; // 設為綠色
            redToolStripMenuItem.Checked = false;
            greenToolStripMenuItem.Checked = true;
            blueToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void blueToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 2;
            linecolor = setcolor[index]; // 設為藍色
            redToolStripMenuItem.Checked = false;
            greenToolStripMenuItem.Checked = false;
            blueToolStripMenuItem.Checked = true;
            Invalidate();
        }

        //=================【線條樣式選擇事件】=================
        private void solidToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lineSolid = true; // 實線
            solidToolStripMenuItem.Checked = true;
            dashToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void dashToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lineSolid = false; // 虛線
            solidToolStripMenuItem.Checked = false;
            dashToolStripMenuItem.Checked = true;
            Invalidate();
        }

        //=================【線寬選擇事件】=================
        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            lineWidth = 1;
            toolStripMenuItem2.Checked = true;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            lineWidth = 2;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = true;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            lineWidth = 3;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = true;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem5_Click(object sender, EventArgs e)
        {
            lineWidth = 4;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = true;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem6_Click(object sender, EventArgs e)
        {
            lineWidth = 5;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = true;
            Invalidate();
        }

        //=================【滑鼠事件】=================
        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            //★MouseDown：記錄起點座標
            p1 = e.Location;
        }

        private void Form1_MouseUp(object sender, MouseEventArgs e)
        {
            //★MouseUp：記錄終點座標，並存入目前線條設定
            startPt.Add(p1);
            endPt.Add(e.Location);
            colorPt.Add(linecolor);
            solid.Add(lineSolid);
            width.Add(lineWidth);

            // 要求系統重繪 (觸發 Paint)
            Invalidate();
        }

        //=================【重繪事件：實際繪圖】=================
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            //★考點：所有繪圖動作都應該放在 Paint 裡，並使用 e.Graphics
            for (int i = 0; i < endPt.Count(); i++)
            {
                Pen pen1 = new Pen(colorPt[i], width[i]); // 設定筆刷顏色與寬度

                // 判斷線型
                if (solid[i])
                    pen1.DashStyle = DashStyle.Solid;
                else
                    pen1.DashStyle = DashStyle.Dash;

                //★實際繪出線段
                e.Graphics.DrawLine(pen1, startPt[i].X, startPt[i].Y, endPt[i].X, endPt[i].Y);
            }
        }
    }
}





/*
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Drawing.Drawing2D;

namespace _1131417_HW3
{
    public partial class Form1 : Form
    {
        List<Point> startPt = new List<Point>();
        List<Point> endPt = new List<Point>();
        Point p1;

        List<Color> colorPt = new List<Color>();
        List<Color> setcolor = new List<Color>(3);

        List<bool> solid = new List<bool>();

        List<int> width = new List<int>();

        int index = 0;
        Color linecolor = Color.Red;
        bool lineSolid = true;
        int lineWidth = 3;

        public Form1()
        {
            InitializeComponent();
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //save跟load順序需一樣
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                String s = saveFileDialog1.FileName;
                BinaryWriter outFile = new BinaryWriter(File.Open(s, FileMode.Create));
                outFile.Write(endPt.Count());
                for (int i = 0; i < endPt.Count(); i++)
                {
                    outFile.Write(startPt[i].X);
                    outFile.Write(startPt[i].Y);
                    outFile.Write(endPt[i].X);
                    outFile.Write(endPt[i].Y);
                    outFile.Write(colorPt[i].ToArgb());
                    outFile.Write(solid[i]);
                    outFile.Write(width[i]);
                }
                outFile.Close();
            }

        }

        private void loadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //save跟load順序需一樣
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                String s = openFileDialog1.FileName;
                if (!File.Exists(s)) return;
                BinaryReader inFile = new BinaryReader(File.Open(s, FileMode.Open));
                startPt.Clear();
                endPt.Clear();
                colorPt.Clear();
                int n = inFile.ReadInt32();
                for (int i = 0; i < n; i++)
                {
                    startPt.Add(new Point(inFile.ReadInt32(), inFile.ReadInt32()));
                    endPt.Add(new Point(inFile.ReadInt32(), inFile.ReadInt32()));
                    colorPt.Add(Color.FromArgb(inFile.ReadInt32()));
                    solid.Add(inFile.ReadBoolean());
                    width.Add(inFile.ReadInt32());
                }
                Invalidate();
                inFile.Close();
            }

        }

        private void clearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            startPt.Clear();
            endPt.Clear();
            colorPt.Clear();
            Invalidate();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            setcolor.Add(Color.Red);
            setcolor.Add(Color.Green);
            setcolor.Add(Color.Blue);

            openFileDialog1.Filter = "線段檔(*.pnt)|*.pnt";
            saveFileDialog1.Filter = "線段檔(*.pnt)|*.pnt";

            redToolStripMenuItem.Checked = true;
            //greenToolStripMenuItem.Checked = false;
            //blueToolStripMenuItem.Checked = false;

            solidToolStripMenuItem.Checked = true;
            //dashToolStripMenuItem.Checked = false;

            //toolStripMenuItem2.Checked = false;
            //toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = true;
            //toolStripMenuItem5.Checked = false;
            //toolStripMenuItem6.Checked = false;
        }

        private void redToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 0;
            linecolor = setcolor[index];
            redToolStripMenuItem.Checked = true;
            greenToolStripMenuItem.Checked = false;
            blueToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void greenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 1;
            linecolor = setcolor[index];
            redToolStripMenuItem.Checked = false;
            greenToolStripMenuItem.Checked = true;
            blueToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void blueToolStripMenuItem_Click(object sender, EventArgs e)
        {
            index = 2;
            linecolor = setcolor[index];
            redToolStripMenuItem.Checked = false;
            greenToolStripMenuItem.Checked = false;
            blueToolStripMenuItem.Checked = true;
            Invalidate();
        }

        private void solidToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lineSolid = true;
            solidToolStripMenuItem.Checked = true;
            dashToolStripMenuItem.Checked = false;
            Invalidate();
        }

        private void dashToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lineSolid = false;
            solidToolStripMenuItem.Checked = false;
            dashToolStripMenuItem.Checked = true;
            Invalidate();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            lineWidth = 1;
            toolStripMenuItem2.Checked = true;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            lineWidth = 2;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = true;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            lineWidth = 3;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = true;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem5_Click(object sender, EventArgs e)
        {
            lineWidth = 4;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = true;
            toolStripMenuItem6.Checked = false;
            Invalidate();
        }

        private void toolStripMenuItem6_Click(object sender, EventArgs e)
        {
            lineWidth = 5;
            toolStripMenuItem2.Checked = false;
            toolStripMenuItem3.Checked = false;
            toolStripMenuItem4.Checked = false;
            toolStripMenuItem5.Checked = false;
            toolStripMenuItem6.Checked = true;
            Invalidate();
        }

        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            p1 = e.Location;
        }

        private void Form1_MouseUp(object sender, MouseEventArgs e)
        {
            startPt.Add(p1);
            endPt.Add(e.Location);
            colorPt.Add(linecolor);
            solid.Add(lineSolid);
            width.Add(lineWidth);

            Invalidate();
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            for (int i = 0; i < endPt.Count(); i++)
            {
                Pen pen1 = new Pen(colorPt[i], width[i]);
                if (solid[i])
                    pen1.DashStyle = DashStyle.Solid;
                else
                    pen1.DashStyle = DashStyle.Dash;
                e.Graphics.DrawLine(pen1, startPt[i].X, startPt[i].Y, endPt[i].X, endPt[i].Y);
            }
            
        }
    }
}
*/
