# git-workshop-upstream

## Git workshop: The origin repository

Clone this repository if you want to do the Coolblue Git workshop!

### Exercise 2

#### Scenario 1 - Upstream has changed
You need to fetch the latest changes from upstream master and rebase them against your origin.

#### Scenario 2 - But my changes are already pushed to origin!

Run these:

`touch file_i_accidentally_pushed_to_origin`

`git commit -m "[GIT-2] This is my new file I should not have pushed to origin..."`

`git push`

Hmm, maybe we should:

`mv file_i_accidentally_pushed_to_origin file_i_should_have_pushed_to_origin`.

`git commit --amend`

`git push -f`