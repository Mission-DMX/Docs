#! /usr/bin/bash

mkdir -p build/docs
mkdir -p build/site
rm -rf build/docs/*
rm -rf build/site/*
cp -r Fish_Doku build/docs/
cp -r Editor build/docs/
rename 's/Readme/index/' build/docs/**/*.md
rename 's/README/index/' build/docs/**/*.md
mkdocs build
