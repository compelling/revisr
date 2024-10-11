#!/usr/bin/env bash
if [ $# -eq 0 ]; then
    >&2 echo "No destination folder provided"
    exit 1
fi
rm -rf $1/wp-content/plugins/revisr
mkdir $1/wp-content/plugins/revisr
cp -r assets/ $1/wp-content/plugins/revisr/assets
cp -r classes/ $1/wp-content/plugins/revisr/classes
cp -r languages/ $1/wp-content/plugins/revisr/languages
cp -r templates/ $1/wp-content/plugins/revisr/templates
cp -r index.php revisr.php uninstall.php LICENSE.txt README.md readme.txt $1/wp-content/plugins/revisr
