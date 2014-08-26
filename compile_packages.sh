#!/bin/bash

cd site-lisp/

# List of package to be compiled.
PACKAGES=(auto-complete company-mode ecb git-modes helm magit matlab-emacs)

# Compile packages.
for package in ${PACKAGES[*]}
do
    cd $package
    make
    cd ..
done