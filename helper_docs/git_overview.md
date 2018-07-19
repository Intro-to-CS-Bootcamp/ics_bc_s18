# Git Overview

The way that GitHub works is that you have two versions of your code, the remote and the local. The remote is the code
visible on GitHub to whomever has access to the repository, so that’s the code that we’ll be seeing and grading. The local
is the code on your computer as you work on it.

So whenever you have a project on GitHub you will work on it on the local copy, and when you finish a task, you’ll add it,
commit, and push to the remote. This serves to share it with whomever you’re collaborating with, and give you access to
versioned back-ups. The second is particularly important as it means that if things break, you can use your commit log to
find the last point things worked and see exactly what the changes made after that were so you can find the bug.

### Useful Commands

**Note: Please do NOT make edits directly on the Github website.** If you edit a repo simultaneously at two places, you will (usually) get a merge conflict. Those are not nice. Believe me.

That said, you may go on the website to make sure that you've pushed successfully, to view your code if you're not on your computer, to look at your commit history, etc.

The following commands are all done in your terminal (or if you use Windows, either Gitbash or command prompt).

#### You Will Need These

`git status`: Tells you what status your local git files are in. File changes (create, edit, or delete) can be:
1. unstaged (just changed, haven't done anything related to git yet) - use `git add`
2. staged for commit (you've added it to the group of files you're about to commit called staging area) - use `git commit`
3. committed (you've saved the changes to some part of your computer other than just in the file, kinda like a backup). `git status` also tells you how many commits your local is ahead the remote - if greater than zero, use `git push`

`git add some_file`: Stages the changes made to `some_file` for commit (staging area). You can choose which changes you want to commit, because sometimes you just don't want to commit something, or want to commit it later. If you don't care, use `git add .` to add everything since `.` means everything.

`git commit -m "Some commit message"`: Commits all changes in the staging area. After a change is committed, it will be saved somewhere on your computer other than the file - like a Cloud backup. The difference is that it saves the entire timeline, not just the final state. So if you want to revert a file to some earlier stage of development, you can do so. That's why it's best to commit often, because you can only revert to those snapshots that correspond to a commit.

`git push` or `git push some_place some_branch`: Pushes your local commits to the remote (possibly someone else's remote you specify). That way, others can see what you've changed. It can also serve as another backup, because local commits will still disappear if your computer is stolen or something. The remote is your google drive.

`git pull` or `git pull some_place some_branch`: Pulls commits from the remote (or someone else's remote) onto your local computer. It may contain changes by your teammates or changes you made directly on the Github website because you were too lazy to do it on your local repo (don't do that).

`git clone link_to_repo`: Clones a repo you've already created on the website (remotely) onto your local computer. You will probably only use this command once in this course.

#### These You Probably (Hopefully) Won't Need

`git log`: Tells you what commits you've made so far (on your local computer). You can use the up and down arrows to scroll and type `q` to quit. You can also do this on the website by clicking "History".

**If you ever suspect you need the following commands, it is recommended you also message a TA or at least do some googling, as they are a little complicated.**

`git reset some_file` or just `git reset`: If you accidentally stage (`git add`) something you didn't mean to, use this to unstage it.

`git checkout -- some_file`: If you mess up, you can replace the changes in your working tree with the content in the staging area. Changes already staged, as well as new files, will not be affected.

`git rm some_file`: Deletes the file and also stages the removal for commit. Use `git rm -r some_directory` to delete a folder and all files in it.

`git push -f`: Force push your commits to the remote. Do this when you are despairing and just can't figure out how to fix the merge conflict.

### Useful Links

Below are Tutorials for Git and the command line on Codecademy. They are by no means manadory, but may be useful if you
want to learn more.

[Learn Git](https://www.codecademy.com/learn/learn-git) (Most relevant is part 1 and possibly 2, but 3&4 are still good
to know)

[Learn Command Line](https://www.codecademy.com/learn/learn-the-command-line) (Again 1 and 2 most relevant, but 3&4 are cool
to have, especially 4 can customize your command line)
