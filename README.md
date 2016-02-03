## Git workshop: The origin repository

Clone this repository if you want to do the Coolblue Git workshop!

### Exercise 1

#### Scenario 1 - Amending
Rewrite the commit message to contain the issue number: GIT-1. Use 'git commit --amend'

<b>SOLUTION:</b>
- `git commit --amend`
- The commit message will be shown in a text editor.
- Rewrite and save the message. Close the editor.

#### Scenario 2 - Rewrite message
Rewrite the commit message of the first commit and add the issue number: GIT-1. Use interactive rebasing: 'git rebase -i'. Don't forget to add the name of the branch (where you are rebasing onto).

<b>SOLUTION:</b>
- `git rebase -i master`
- The interactive rebase list is opened in a text editor.
- On the line of the first commit, change the word 'pick' into 'rewrite' (or shorthand notation: 'r').
- Save the list and close the editor.
- The commit message will be shown in a text editor.
- Rewrite and save the message. Close the editor.

#### Scenario 3 - Reorder commits
Add a commit before the 'first exercise' commit. In the LICENSE file it states the 'Copyright (c) 2016 Roelof'. However, since Roelof works for Coolblue, the copyright of all of his work is actually for Coolblue. Change the LICENSE file copyright to Coolblue. Commit this change and order your commits, so that this new commit is before the 'first exercise' commit. Use interactive rebasing.

<b>SOLUTION:</b>
- Make the change to the LICENSE file
- `git add LICENSE` or `git add .` Tip: try `git add -p` for partial adding of changes.
- `git commit`
- A text editor is started. Write a commit message.
- Save the message and close the editor.
- `git rebase -i master`
- The interactive rebase list is opened in a text editor.
- Reorder the lines in the list, move the line of the last commit to the first line.
- Save the list and close the editor.
- The commit message will be shown in a text editor.
- Rewrite and save the message. Close the editor.

#### Scenario 4 - Rewrite commit
Rewrite the 'first exercise' commit. We forgot that the scenarios in this README file should be grouped per exercise. Add a h2 header 'Exercise 1' above 'Scenario 1' and add that change to the 'first exercise' commit. Use interactive rebasing.

<b>SOLUTION:</b>
- Make the change to the README file
- `git add -p`
- Select 'y' for the change you want to add to the staging area.
- `git commit`
- A text editor is started. Write a commit message, for example 'fixup'. Tip: you can directly add a message on the command line with the -m option: `git commit -m 'fixup'`
- Save the message and close the editor.
- `git rebase -i master`
- The interactive rebase list is opened in a text editor.
- Reorder the lines in the list, move the line of the fixup commit below the first exercise commit.
- On the fixup commit line, change the word 'pick' into 'fixup' (or shorthand notation: 'f')
- Save the list and close the editor.

#### Scenario 5 - Rewrite commit with conflict
Rewrite the 'boyscout' commit. As you can see, we made a mistake, we forgot to make the 'scenario 3' header smaller. Fix this mistake and add that change to the 'boyscout' commit. Use interactive rebasing.

<b>SOLUTION:</b>
- Make the change to the README file
- `git add -p`
- Select 'y' for the change you want to add to the staging area.
- `git commit -m 'fixup'`
- `git rebase -i master`
- The interactive rebase list is opened in a text editor.
- Reorder the lines in the list, move the line of the fixup commit below the boyscout commit.
- On the fixup commit line, change the word 'pick' into 'fixup' (or shorthand notation: 'f')
- Save the list and close the editor.
- The rebase will now halt with a conflict.
- Use `git mergetool` or fix the conflict in the README file yourself.
- `git rebase --continue` Note: since you're rebasing, you do not need to use `git add` at this point.

Tip: if you mess up during a rebase, you can use `git rebase --abort` to abort the rebase. It will set the files back to the previous state (the same state as when you started the rebase), so you can try again.

Tip 2: kdiff3 is a very good mergetool. Installing it on OSX: `brew install kdiff3` On Ubuntu `apt-get install kdiff3` or on CentOS / Fedora / Redhat `yum install kdiff3` To configure it as mergetool for git, run `git config --global merge.tool kdiff3`

#### Scenario 6 - Squash commits
After reviewing the commits, you have the idea that the 'add descriptive titles' commit and the 'boyscout' commit could just be one commit. Squash these commits into one '[BOYSCOUT] Improve headers in README' commit.

<b>SOLUTION:</b>
- `git rebase -i master`
- The interactive rebase list is opened in a text editor.
- On the line of the 'add descriptive titles' commit, change the word 'pick' into 'squash' (or shorthand notation: 's').
- Save the list and close the editor.
- The commit messages will be shown in a text editor.
- Remove both messages and write the correct one.
- Save the message. Close the editor.

#### Scenario 7 - Reset and try again
Look at the commits on this branch, this time you've really made a hash of it. You've accidentally committed the spec folder in the commit that adds the seventh scenario to the README. Also, the last commit was supposed to be a temporary commit, but you've pushed it to your origin repository.
Get rid of all commits and create at least two new commits. The first should contain the changes to the README. You can use your own insights to make logical commits. Use the git reset command to reset your branch to the same state as your master branch.


<b>SOLUTION:</b>
- `git reset master`, `git reset HEAD~~~` or `git reset HEAD^^^`. You can also use `git reset master --mixed`, but that option is also the default. Note: git reset will reset your current git branch to the specified point in git history. Reset does not destroy commits and by default will not undo changes. Tip: do not use `git reset master --hard` at this point, that option WILL undo the changes from your working directory.
- `git add -p`
- Select 'y' for the change you want to add to the staging area.
- `git commit`
- A text editor is started. Write the commit message.
- Save the message and close the editor.
- Repeat the steps until you have all the changes committed.

<b>BONUS assignment:</b> This repository contains a Ruby class and spec file describing the behaviour of this class. However, the spec is failing because the hit method is not implemented. Implement the Bowling#hit method so that the spec succeeds. Rebase or amend your commit(s) to include this fix.


<b>No solution provided. You should now be able to do this!</b>
