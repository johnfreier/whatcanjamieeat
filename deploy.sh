#!/bin/bash

die () {
	echo "Error: $1"
	exit 1
}


[[ -z "${PROJECT_DIR}" ]] && die "Project directory is not set."
[[ -z "${TARGET_DIR}" ]] && die "Target directory is not set."

echo "Running on " $(date)
echo "Project directory: $PROJECT_DIR"
echo "Target directory: $TARGET_DIR"

cd $PROJECT_DIR

git fetch

updates=$(git log origin/main ^main|wc -l)

echo "Number of updates: $updates"

if [[ $? -gt 0 ]]; then
	echo "Error"
	exit 1
fi

if [[ $updates -gt 0 || "$1" -eq "update" ]]; then

	echo "Pending changes detected."

	echo "Pulling the latest from git."
	git pull

	echo "Building the site."
	/usr/local/bin/bundle exec /usr/local/bin/jekyll build

	echo "Syncing the site files."
	rsync -avu --delete $PROJECT_DIR/_site/ $TARGET_DIR

else
	echo "No changes detected."
fi
