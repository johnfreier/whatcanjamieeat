#!/bin/bash

die () {
	echo "Error: $1"
	exit 1
}


[[ -z "${PROJECT_DIR}" ]] && die "Project directory is not set."
[[ -z "${TARGET_DIR}" ]] && die "Target directory is not set."

echo "Project directory: $PROJECT_DIR"
echo "Target directory: $TARGET_DIR"

git fetch

updates=$(git log origin/main ^main|wc -l)

if [[ $? -gt 0 ]]; then
	echo "Error"
	exit 1
fi

if [[ $updates -eq 0 ]]; then

	echo "Pending changes detected."

	git pull

	jekyll build

	rsync -avu --delete $PROJECT_DIR/_site/ $TARGET_DIR

else
	echo "No changes detected."
fi
