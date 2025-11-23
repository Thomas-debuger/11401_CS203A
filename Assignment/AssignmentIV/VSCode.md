# 執行、開發的環境：Windows   

英文版：
# My Journey Connecting VSCode to GitHub
---
**Step 1**
I installed VSCode and Git in high school. Back then, I followed this video tutorial: https://www.youtube.com/watch?v=DMWD7wfhgNY

**Step 2**
This was the most difficult part for me. Previously, when I made notes on GitHub, I edited directly on the GitHub website. This assignment required us to edit in VSCode and automatically sync the results to GitHub.

- Step 2-1: Click the file icon in the upper left corner, then select "Open in new window".
- Step 2-2: In the left-hand menu, under File Explorer or the Branches tab, select "Copy to repository".
- Step 2-3: Clicking "Copy from GitHub" will automatically redirect you to the browser's authorization screen.
- Step 2-4: After successfully authorizing your GitHub account, you will be redirected back to VS Code.
- Step 2-5: You can now create new files and content, and switch branches. Each file will have an English word next to its name, with the following meanings:
```
- U - Create a new file
- A - Add to tracking
- M - File has changed from the previous commit
```
<Supplement> If you want to use commands, you can also open the terminal in VS Code (using commands or opening it from the toolbar at the top).

**Step 3** This is where I encountered the second difficulty. After modifying the code in VS Code, when I clicked "Source Control (CTRL + SHIFT + G)" on the left side of the page, I had to first enter a short title in the message box so that I or other users could understand what actions the developer had taken in this update and modification. After writing the message, I clicked the "Commit" button, and finally clicked "Sync Updates." The biggest problem I encountered in this step was that initially, I didn't know I needed to enter a title in the message box, which prevented our update from successfully syncing to GitHub.
