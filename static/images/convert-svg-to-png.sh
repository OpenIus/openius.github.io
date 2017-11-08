#!/bin/bash

INPUT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for FILE in $INPUT_DIR/*.svg; do
    DESTINATION=${FILE%.svg}
    inkscape -f $FILE -e $DESTINATION.png -y 0 -w 500
done
