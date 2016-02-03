## Git workshop: The origin repository

Clone this repository if you want to do the Coolblue Git workshop!

### Exercise 1

#### Scenario 1 - Amending
Rewrite the commit message to contain the issue number: GIT-1. Use 'git commit --amend'

#### Scenario 2 - Rewrite message
Rewrite the commit message of the first commit and add the issue number: GIT-1. Use interactive rebasing: 'git rebase -i'. Don't forget to add the name of the branch (where you are rebasing onto).

#### Scenario 3 - Reorder commits
Add a commit before the 'first exercise' commit. In the LICENSE file it states the 'Copyright (c) 2016 Roelof'. However, since Roelof works for Coolblue, the copyright of all of his work is actually for Coolblue. Change the LICENSE file copyright to Coolblue. Commit this change and order your commits, so that this new commit is before the 'first exercise' commit. Use interactive rebasing.

#### Scenario 4 - Rewrite commit
Rewrite the 'first exercise' commit. We forgot that the scenarios in this README file should be grouped per exercise. Add a h2 header 'Exercise 1' above 'Scenario 1' and add that change to the 'first exercise' commit. Use interactive rebasing.

#### Scenario 5 - Rewrite commit with conflict
Rewrite the 'boyscout' commit. As you can see, we made a mistake, we forgot to make the 'scenario 3' header smaller. Fix this mistake and add that change to the 'boyscout' commit. Use interactive rebasing.

#### Scenario 6 - Squash commits
After reviewing the commits, you have the idea that the 'add descriptive titles' commit and the 'boyscout' commit could just be one commit. Squash these commits into one '[BOYSCOUT] Improve headers in README' commit.

#### Scenario 7 - Reset and try again
Look at the commits on this branch, this time you've really made a hash of it. You've accidentally committed the spec folder in the commit that adds the seventh scenario to the README. Also, the last commit was supposed to be a temporary commit, but you've pushed it to your origin repository.
Get rid of all commits and create at least two new commits. The first should contain the changes to the README. You can use your own insights to make logical commits. Use the git reset command to reset your branch to the same state as your master branch.

<b>BONUS assignment:</b> This repository contains a Ruby class and spec file describing the behaviour of this class. However, the spec is failing because the hit method is not implemented. Implement the Bowling#hit method so that the spec succeeds. Rebase your commits to include this fix.
