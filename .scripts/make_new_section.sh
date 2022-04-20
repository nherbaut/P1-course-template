#!/usr/bin/env bash

echo "please enter the name of the new section"
read SECTION_NAME

cp -r .template "$SECTION_NAME"
