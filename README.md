## Git workshop: The origin repository

Clone this repository if you want to do the Coolblue Git workshop!

### Exercise 1

#### Scenario 1 - Amending
Rewrite the commit message to contain the issue number: GIT-1. Use 'git commit --amend'

#### Scenario 2 - Rewrite message
Rewrite the commit message of the first commit and add the issue number: GIT-1. Use interactive rebasing: 'git rebase -i'. Don't forget to add the name of the branch (where you are rebasing onto).

### Scenario 3 - Reorder commits
Add a commit before the 'first exercise' commit. In the LICENSE file it states the 'Copyright (c) 2016 Roelof'. However, since Roelof works for Coolblue, the copyright of all of his work is actually for Coolblue. Change the LICENSE file copyright to Coolblue. Commit this change and order your commits, so that this new commit is before the 'first exercise' commit. Use interactive rebasing.

#### Scenario 4 - Rewrite commit
Rewrite the 'first exercise' commit. We forgot that the scenarios in this README file should be grouped per exercise. Add a h2 header 'Exercise 1' above 'Scenario 1' and add that change to the 'first exercise' commit. Use interactive rebasing.

#### Scenario 5 - Rewrite commit with conflict
Rewrite the 'boyscout' commit. As you can see, we made a mistake, we forgot to make the 'scenario 3' header smaller. Fix this mistake and add that change to the 'boyscout' commit. Use interactive rebasing.
