# 執行、開發的環境：Windows   

# My Journey Connecting VS Code to GitHub

---

**Step 1 — Getting Started with VS Code and Git**
I first installed VS Code and Git back in high school, following this tutorial:
[https://www.youtube.com/watch?v=DMWD7wfhgNY](https://www.youtube.com/watch?v=DMWD7wfhgNY)
Although it only covered the basics, it gave me a rough idea of how Git works.

---

**Step 2 — Linking VS Code with GitHub**
This step turned out to be the most challenging part of the entire process. Previously, whenever I took notes on GitHub, I edited everything directly on the website. For this assignment, however, we needed to make changes in VS Code and sync them to GitHub automatically—something I had never fully configured before.

Here’s the process I followed:

* **Step 2-1:** Click the file icon in the upper-left corner and choose **“Open in New Window.”**
* **Step 2-2:** In the File Explorer or the Branches tab on the left panel, select **“Copy to repository.”**
* **Step 2-3:** Clicking **“Copy from GitHub”** will redirect you to your browser for authorization.
* **Step 2-4:** Once your GitHub account is successfully authorized, VS Code will return to the editor automatically.
* **Step 2-5:** You can now create files, edit content, and switch branches. VS Code will display small status letters next to each filename:

```
U — Newly created file  
A — Added to tracking  
M — Modified compared to last commit
```

*Note:* If you prefer using commands, you can open the integrated terminal in VS Code and work directly with Git CLI.

---

**Step 3 — Committing and Syncing**
The second difficulty I encountered happened during the commit process. After editing a file in VS Code, I opened **Source Control (CTRL + SHIFT + G)**. Before committing, VS Code requires a short commit message that briefly explains the changes. After entering the message, I clicked **Commit**, and finally, **Sync Changes** to push everything to GitHub.

My main issue was that I didn’t realize a commit message was required. Without it, VS Code simply wouldn’t sync the update, and I mistakenly assumed something was wrong with GitHub.

![image](https://github.com/Thomas-debuger/11401_CS203A/blob/main/Assignment/AssignmentIV/VSCode.md.png)     
![image](https://github.com/Thomas-debuger/11401_CS203A/blob/main/Assignment/AssignmentIV/VSCode.md2.png)       
