#!/bin/bash

SUCCESS_MESSAGE="You're done, move on to the next exercise!!"
FAILURE_MESSAGE="Nope, please try again or ask the bearded guy"
#Create functions echoing the result of validation
function exercise_1_scenario_1 {
	commit_message=$(git log --format=%B -n 1 | cat)
	if [[ $commit_message == *"[GIT-1] "* && -z $(history | grep 'git commit --amend') ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_2 {
	commit_message=$(git log --format=%B HEAD~ -n 1 | cat)
	if [[ $commit_message == *"[GIT-1] "* && -z $(history | grep 'git rebase') ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_3 {
	commit=$(git show HEAD~~ | cat)
	if [[ $commit == *"-Copyright (c) 2016 Roelof"* && $(history | grep 'git rebase' | wc ) -ge 2 && $commit == *"[GIT-1] "* ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_4 {
	commit=$(git show HEAD~3 | cat)
	if [[ $commit == *"+## Exercise 1"* && $(history | grep 'git rebase' | wc) -ge 3 && $commit == *"[GIT-1] "* ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_5 {
	commit=$(git show HEAD~~ | cat)
	if [[ $commit == *"+#### Scenario"* && -z $(history | grep 'git rebase --continue') && $commit == *"[BOYSCOUT] " ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_6 {
	commit=$(git show HEAD~~ --stat | cat)
	expected_additions="README.md | 12 ++++++------"
	if [[ $commit == *$expected_additions* && $(history | grep 'git rebase' | wc) -ge 4 && $commit == *"[BOYSCOUT] Improve headers in README"* ]]; then
		echo $SUCCESS_MESSAGE;
	else
		echo $FAILURE_MESSAGE;
	fi
}

function exercise_1_scenario_7 {
	echo "I can't validate a lot here, you should know what you've done..."
}

function master {
	echo "
*****************************************
|    Hey!! You should not be here...    |
|Try: git checkout exercise_1_scenario_1|
*****************************************
";
}

function info {
	echo "
|******************************INFO*******************************|
|Some Usefull Commands on how to do the exercises and validate the|
|result using the solution-checker tool                           |
|commands: ./solution-checker info -> brings up this window       |
|commands: ./solution-checker reset -> resets your branch origin  |
|*****************************************************************|
|Once you have finihed just execute the ./solution-checker        |
|Success:'$SUCCESS_MESSAGE'              |
|Error:'$FAILURE_MESSAGE'            |
|                                                                 |
|'git branch <branch_name>' : goes to the respective branch       |
|'git log': shows the git log (last is on top)                    |
|'git checkout <branch_name>' : switches to another branch        |
|'git add -p' : adds selectively changes to stage                 |
|                                                                 |
|Creators:                                                        |
|r.reitsma@coolblue.nl,p.james@coolblue.nl,d.dimitriou@coolblue.nl|
|_________________________________________________________________|
";
}
# Get the relevant branch the user is in
BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ -z "$@" ]]; then
	# Call the respective function
	eval ${BRANCH}
else
	if [[ "$1" == "info" ]]; then
		info
	fi
	if [[ "$1" == "reset" ]]; then
		echo "Help me I managed to mess it up...";
		echo "If I haven't pushed anything to my origin,";
		echo "then: git fetch && git reset --hard origin/$BRANCH";
		RESET="git fetch && git reset --hard origin/$BRANCH"
		eval ${RESET};
	fi
fi
