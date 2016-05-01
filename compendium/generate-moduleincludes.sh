#!/bin/bash

for module in modules/*; do
    week=$(echo $module | egrep -o "w[0-9]+")
    for chapterfile in "chapter" "exercise" "lab"; do
        echo "\\input{$module/${week}-${chapterfile}.tex}"
    done
done
