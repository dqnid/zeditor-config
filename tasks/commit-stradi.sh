#!/bin/sh

emoji="$(cat ~/.config/zed/tasks/assets/emoji_list.txt | fzf | awk -F' ' '{print $3}')"

branch="$(git branch --show-current | awk -F'/' '{print $2}')"

message="[$branch] $emoji "

echo -n $message | pbcopy

echo "$message copied to clipboard"
