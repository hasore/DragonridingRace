#!/bin/bash

if [ $# -eq 0 ]; then
    >&2 echo "Usage: ./release.sh <version>";
    exit 1;
fi

addonName="$(grep -Po '## Title: ([a-zA-Z0-0\ ])+' *-dev.toc | sed 's/## Title: //g')";
echo "> Releasing $addonName version $1...";

echo "Enter changes line by line. Enter a blank line to finish.";
changes="";
while read -p "- " line; do
    if [ "$line" = "" ]; then
        break;
    fi
    changes="$changes- $line\n";
done

# Print changes at the top of CHANGELOG.md
date=$(date +"%Y-%m-%d");
sed -i "s/# Changelog/# Changelog\n\n## [$1] - $date\n$changes/g" CHANGELOG.md

cp ./$addonName-dev.toc ./$addonName.toc
sed -i "s/## Version: dev/## Version: $1/g" $addonName.toc

./package.sh $addonName $1

git add CHANGELOG.md
git commit -m "chore: $1 release"
git tag -a "v$1" -m "v$1"

echo "Released $addonName version $1";
exit 0;
