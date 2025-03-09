# git | CVS Hosting | gitops |

# basic git commands (for managing repositories)
git init
git clone <repo_Url>
git status: show the woking directory status(which files are modified,staged,etc.)
git add: stages a file or files to be committed
git commit -m "message": commits staged changes to the local repository with a message
git push: pushes committed changes to the remote repository.
git pull:fetches and merges changes from the remote repository to your local working directory
git fetch:downloads objects and refs from another repository(without merging)'
git merge:merges changes from the specified branch into the current branch.
git log:shows the commit history of the repository
git diff:shows the differences between your working directory and the index(staged changes)



# branching commands(managing branches)
git branch: list all branches in your repository.
git branch <branch_name>: creates a new branch.
git checkout <branch_name>: switches toan existing branch
git checkout -b <branch_name>: creates and switches to a new branch in one step
git merge <branch_name>: merges changes from the specified branch into the current branch
git rebase <branch_name>: applies changes from one branch onto another branch (instead of merging)
git branch -d <branch_name>: deletes the specified branch(locally)
git branch -D <branch_name>: forcefully deletes a branch(locally)
git remote set-head origin <branch_name>: sets the default branch for the remote repository.


# remote commands(manageing remotes and syncing with the cloud)
git remote -v: shows the remote repository 
git remote add: adds a new remote repository
git remote remove: removes a remote repository
git push origin <branch_name>: pushes a branch to a remote repository.
git push -u origin <branch_name>: pushes a branch to a remote repository and sets the upstream for the branch
git pull origin <branch_name>: fetches and merges a branch from the remote repository
git fetch origin: downloads objects and refs from the remote repository
git remote show origin: display defailed information about a remote repository.

# staging and committing (managing changes)
git add .: stages all modified files in the working directory.
git add -A: stages allmodified files(including file deletions)
git reset: unstages a file(reverts it to the working  directory)
git commit --amend: modifies the last commit(can change the commit message or add changes)
git commit -a: stages and commits all modified files
git commit --no-verify: skips pre-commit hooks while committing.
git reset --soft HEAD~1:moves the HEAD pointer back one commit but leaves your changes staged.
git reset --hard HEAD~1: MOVES THE head pointer back one commit but leaves your changes staged.

# viewing and comparing changes (inspecting changes)
git diff: shows changes between your working directory and the index(unstaged changes)
gti diff --staged: shows changes between the index(staged files) and the last commit.
git diff <commit_id>: shows the differences between your working directory and a specific commit.
git logs: displays the commit history
git log --online: displays the commit hisotry in a simplified one-line format
git log --graph:display the commit history as a graph
git log --author="name": filters commits by a specific
git log --since="2 weeks ago": filters commits made after a apecific date.
git blame: shows line-by-line annotations for a file, telling who last modified each line.
git show <commit_id>:shows details of a specific commit(including diff and metadata)
git show <commit_id>:<file_path>: shows a specific file at a particular commit

# reverting and resetting (undoing changes)
git reset <commit_id>: moves HEAD to a specific commit, leaving your working directory intact(can be used with --soft, --mixed, or --hard)
git reset --hard <commit_id>: resets your working directory, index, and HEAD to a specific commit(all changes will be lost)
git reset --soft <commit_id>:resets only the HEAD to a specific commit, leaving stages changes.
git reset --mixed <commit_id>:resets the HEAD and index to a specific commit but keeps the wokring directory unchanged
git revert <commit_id>: creates a new commit that undoes the changes of the specified commit
git restore: restores the files in the working directory from the index or a commit
git restore --staged: removes a file from the staging area
git clean -f: removes untracked files in the working directory
git clean -fd: removes untrackedfiles and directories

# stashing (temporarily saving changes)
git stash: stashed the changes in your working directory(both staged and unstaged)
git stash list: lists all the stashes.
git stash pop: applies the latest stash and removes it from the stash list.
git stash apply: applies a stash without removing it from the list
git stash drop: removes a specifiec stash from the stash list.
git stash clear: clear all stashed
git stash save "message": stashes changes with an optional message for indentification
git stash branch <branch_name>:creates a new branch fromthe stash and applies it.

# tags(manageing versions)
git tag: list all tags in the repository
git tag <tag_name>: creates a new tag at the current commit
git -a <tag_name> -m "message": creates and annotated tag with a message
git tag -d <tag_name>: deletes a tag locally
git push origin <tag_name>: pushes a specific tag to the remote repository.
git push origin --tags: pushes all tags to the remote repository.
git fetch --tags:fetches all tags from the remote repository.

# git config and info (configuration and repository information)
git config --global user.name "your name"
git config --global user.email "youremial@example.com"
git config --list
git config: sets a specific configuration option
git config --global core.editor
git config --glboal color.ui ture
git config --global alias.st status

# git aliases (custom commands)
git config --global alias.<alias_name> <actual_command>: example: git config --global alias.co checkout


# git hooks (automated scripts triggered by git actions)
git init: creates a .git/hooks directory, where hook scripts are stored
git commit-msg: a hook that runs before a commit message is saved(you can use this to enforce message formats)
git pre-commit: a hook that runs before a commit is made(can be used for checks like linting)
git post-commit: a hook that runs after a commit is made.

# git submodules

# git workflow commands (working with others and managing collaboration)
git pull --rebase: fetches and applies remote changes, rebasing your local commits on top of them
git rebase -i <commit_id>: starts an interactive rebase to modify commit history (e.g., squash,reword commits)
git rebase --continue: continues the rebase after resolving conflicts
git rebase --abort: aborts the rebase process and restores the original state
git merge --no-ff: merges a branch with a "no fast-forward" option to ensure a merge commit is created even when possible to do  a fast-forward merge
git pull --no-commit: pulls changes but doesn't automatically commit them
git push --force-with-lease:forces push but checks if the remote branch has been updated (safer than git push --force)
git push --froce: forces a push to the remote branch, poteically overwriting changes.
git cherry-pick <commit_id>: applies the changes from a specific commit onto the current branch

# git merge stragegies (handling merge conflicts and stragegies)
git merge --stragegy=ours <branch_name>: resolves merge conflicts by favoring the current branch's changes.
git merge --stragegy=theirs <branch_name>: resolves merge conflicts by favoring the other branch's changes.
git merge --abort: aborts the merge process if there are conflicts and resotres the working directory.

# git bisect (finding the commit that introduced a bug)
git bisect start: starts a binary search for the commit that introduced a bug
git bisect bad: marks the current commit as "bad" (where the bug is present)
git bisect good <commit_id>: marks a coomit as "good" (where the bug was not present)
git bisect reset: ends the bisect process and restores the repository to the state it was before starting the bisect.
git bisect log: displays the log of the bisect process

# git hooks for automation (pre-commit and post-commit hooks)


# git clean and prune (cleaning up untracked files and garbage collection)

# git archive (creating a snapshot of the repository)

# git blame and annotate (tracing the history of file content)

# git reflog (tracking changes in the HEAD reference)