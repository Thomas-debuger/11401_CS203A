using System;
using System.Drawing;
using System.Windows.Forms;

namespace _1131417_HW2
{
    public partial class Form1 : Form
    {
        // ====== 遊戲資料 ======
        // 棋盤狀態：0 = 空格, 1 = 電腦 (X), 2 = 玩家 (O)
        private int[,] board = new int[3, 3];

        // 儲存遊戲結果的文字，例如 "You win!"、"Draw!" 等
        private string resultText = "";

        // 儲存勝利紅線的位置（兩個端點 Point）
        private (Point, Point)? winLine = null;

        // 用來產生隨機數，讓電腦隨機下棋
        private Random rand = new Random();

        // ====== 畫面設定 ======
        private const int cellSize = 60;  // 每格大小（像素）
        private const int topOffset = 30; // 棋盤離頂端的距離


        // ====== 建構子 (程式一開始執行時會跑) ======
        public Form1()
        {
            InitializeComponent();     // 初始化表單元件
            DoubleBuffered = true;     // 減少閃爍（優化繪圖）
            ClientSize = new Size(200, 260); // 設定視窗大小

            // ====== 上方選單 (MenuStrip) ======
            var menu = new MenuStrip();
            var gameMenu = new ToolStripMenuItem("Game");
            var resetItem = new ToolStripMenuItem("Reset");

            // 點擊 Reset 時呼叫 RestartGame() 重開遊戲
            resetItem.Click += (s, e) => RestartGame();

            gameMenu.DropDownItems.Add(resetItem);
            menu.Items.Add(gameMenu);
            MainMenuStrip = menu;
            Controls.Add(menu);

            // 設定事件：畫面繪製 + 滑鼠點擊
            Paint += Form1_Paint;
            MouseClick += Form1_MouseClick;
        }

        // ====== 畫面更新事件 ======
        // 每次要重畫視窗時（例如 Invalidate() 被呼叫時）就會執行這裡
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;  // 取得畫布物件，讓我們可以畫線、畫圖案

            // 建立畫筆（Pen）
            Pen blackPen = new Pen(Color.Black, 2); // 畫棋盤的黑線
            Pen bluePen = new Pen(Color.Blue, 2);   // 畫棋子的藍線
            Pen redPen = new Pen(Color.Red, 3);     // 畫勝利線的紅線

            // ====== 畫棋盤 ======
            g.DrawRectangle(blackPen, 0, topOffset, 3 * cellSize, 3 * cellSize);

            // 畫內部的直線與橫線 (把棋盤分成九格)
            for (int i = 1; i < 3; i++)
            {
                // 垂直線
                g.DrawLine(blackPen, i * cellSize, topOffset, i * cellSize, topOffset + 3 * cellSize);
                // 水平線
                g.DrawLine(blackPen, 0, topOffset + i * cellSize, 3 * cellSize, topOffset + i * cellSize);
            }

            // ====== 畫棋子 ======
            for (int r = 0; r < 3; r++)
            {
                for (int c = 0; c < 3; c++)
                {
                    int x = c * cellSize;
                    int y = topOffset + r * cellSize;

                    if (board[r, c] == 1) // 電腦：畫 X
                    {
                        g.DrawLine(bluePen, x + 10, y + 10, x + cellSize - 10, y + cellSize - 10);
                        g.DrawLine(bluePen, x + cellSize - 10, y + 10, x + 10, y + cellSize - 10);
                    }
                    else if (board[r, c] == 2) // 玩家：畫 O
                    {
                        g.DrawEllipse(bluePen, x + 10, y + 10, cellSize - 20, cellSize - 20);
                    }
                }
            }

            // ====== 畫出勝利紅線（若有） ======
            if (winLine != null)
            {
                g.DrawLine(redPen, winLine.Value.Item1, winLine.Value.Item2);
            }

            // ====== 畫結果文字 ======
            if (!string.IsNullOrEmpty(resultText))
            {
                g.DrawString(resultText, new Font("Arial", 12, FontStyle.Bold), Brushes.Black, 10, 220);
            }

            // 釋放資源（避免記憶體浪費）
            blackPen.Dispose();
            bluePen.Dispose();
            redPen.Dispose();
        }

        // ====== 滑鼠點擊事件：玩家出招 ======
        private void Form1_MouseClick(object sender, MouseEventArgs e)
        {
            if (!string.IsNullOrEmpty(resultText)) return; // 如果遊戲已結束，不再反應

            // 計算滑鼠點擊在棋盤的哪一格 (row, col)
            int row = (e.Y - topOffset) / cellSize;
            int col = e.X / cellSize;

            // 超出範圍或點到已有棋子的格子 → 無效
            if (row < 0 || row >= 3 || col < 0 || col >= 3) return;
            if (board[row, col] != 0) return;

            // 玩家下 O（標記為 2）
            board[row, col] = 2;

            // 檢查玩家是否贏 / 平手
            if (HasWin(2, setLine: true)) { resultText = "You win!"; Invalidate(); return; }
            if (IsDraw()) { resultText = "Draw!"; Invalidate(); return; }

            // 換電腦下 X
            ComputerMove();
            Invalidate(); // 重新繪製畫面（更新棋子）
        }

        // ====== 電腦 AI ======
        private void ComputerMove()
        {
            // (1) 自己能贏就贏
            if (TryPlaceWinningMove(1)) { EndIfNeeded(); return; }

            // (2) 若玩家快贏，先擋住
            if (TryBlockOpponent()) { EndIfNeeded(); return; }

            // (3) 否則隨機下
            int r, c;
            do { r = rand.Next(3); c = rand.Next(3); } while (board[r, c] != 0);
            board[r, c] = 1; // 電腦下 X

            EndIfNeeded();
        }

        // 檢查電腦下完後是否該結束
        private void EndIfNeeded()
        {
            if (HasWin(1, setLine: true)) { resultText = "You lose!"; Invalidate(); return; }
            if (IsDraw()) { resultText = "Draw!"; Invalidate(); return; }
        }

        // 嘗試找到「能讓 player 贏」的一步，若找到就直接下
        private bool TryPlaceWinningMove(int player)
        {
            for (int r = 0; r < 3; r++)
            {
                for (int c = 0; c < 3; c++)
                {
                    if (board[r, c] != 0) continue; // 已有棋子就略過
                    board[r, c] = player;           // 模擬這一步
                    bool wins = HasWin(player, setLine: false);
                    if (wins)
                    {
                        return true; // 直接採用這一步
                    }
                    board[r, c] = 0; // 沒贏就還原
                }
            }
            return false;
        }

        // 嘗試擋住玩家的必勝點
        private bool TryBlockOpponent()
        {
            for (int r = 0; r < 3; r++)
            {
                for (int c = 0; c < 3; c++)
                {
                    if (board[r, c] != 0) continue;
                    board[r, c] = 2; // 模擬玩家 O 下這一步
                    bool playerWins = HasWin(2, setLine: false);
                    board[r, c] = 0;
                    if (playerWins)
                    {
                        board[r, c] = 1; // 電腦下這格擋住玩家
                        return true;
                    }
                }
            }
            return false;
        }

        // ====== 勝負判斷 ======
        // setLine = true 時會記錄紅線座標
        private bool HasWin(int player, bool setLine)
        {
            // 橫排判斷
            for (int r = 0; r < 3; r++)
            {
                if (board[r, 0] == player && board[r, 1] == player && board[r, 2] == player)
                {
                    if (setLine)
                        winLine = (new Point(0, topOffset + r * cellSize + cellSize / 2),
                                   new Point(3 * cellSize, topOffset + r * cellSize + cellSize / 2));
                    return true;
                }
            }

            // 直行判斷
            for (int c = 0; c < 3; c++)
            {
                if (board[0, c] == player && board[1, c] == player && board[2, c] == player)
                {
                    if (setLine)
                        winLine = (new Point(c * cellSize + cellSize / 2, topOffset),
                                   new Point(c * cellSize + cellSize / 2, topOffset + 3 * cellSize));
                    return true;
                }
            }

            // 斜線判斷（左上到右下）
            if (board[0, 0] == player && board[1, 1] == player && board[2, 2] == player)
            {
                if (setLine)
                    winLine = (new Point(0, topOffset), new Point(3 * cellSize, topOffset + 3 * cellSize));
                return true;
            }

            // 斜線判斷（右上到左下）
            if (board[0, 2] == player && board[1, 1] == player && board[2, 0] == player)
            {
                if (setLine)
                    winLine = (new Point(3 * cellSize, topOffset), new Point(0, topOffset + 3 * cellSize));
                return true;
            }

            return false; // 沒有人贏
        }

        // 檢查是否平手（棋盤已滿）
        private bool IsDraw()
        {
            foreach (int v in board)
                if (v == 0) return false; // 還有空格 → 還沒平手
            return true;
        }

        // ====== 重開遊戲 ======
        private void RestartGame()
        {
            board = new int[3, 3]; // 清空棋盤
            winLine = null;        // 清除紅線
            resultText = "";       // 清空結果
            Invalidate();          // 重新畫面
        }
    }
}
