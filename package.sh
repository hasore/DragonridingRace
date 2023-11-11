#!/bin/sh

if [ $# -lt 2 ]; then
    >&2 echo "Usage: ./package.sh <addon> <version>";
    exit 1;
fi

echo "> Packaging $1 version $2...";

mkdir -p "dist/$1";
rm "dist/$1-$2.zip";
cp -R ./images ./libs ./locales ./src ./embeds.xml ./$1.toc ./LICENSE ./README.md ./CHANGELOG.md "dist/$1/";
cd dist;
zip -r "$1-$2.zip" "$1/*";
rm -rf "$1";
