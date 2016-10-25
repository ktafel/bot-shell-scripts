#!/bin/bash
rm -rf /Users/mainuser/Documents/release_notes/swift_release_notes.txt
touch /Users/mainuser/Documents/release_notes/swift_release_notes.txt
cd name-of-git-repository-folder
commit=$(git log --pretty=format:"-%an, %ar : %s" -1)
echo "$commit" >> /Users/mainuser/Documents/release_notes/swift_release_notes.txt
