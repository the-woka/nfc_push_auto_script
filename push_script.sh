#!/bin/bash
cd ~/Documents/auto_push_github_nfc 

echo "Start Pushing the Code! - Final (Amin)"

read -p "Input commit message: " commit_msg
if [ -z "$commit_msg" ]; then
    echo "Commit can't be empty"
    exit 1
fi

read -p "Input name branch (Enter for auto main): " branch_name
branch_name=${branch_name:-main}

git add .
git commit -m "$commit_msg"
git push -u origin "$branch_name"

echo "Done Push! - Final (Amin)"