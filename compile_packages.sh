#!/bin/bash

cd site-lisp/

# List of package to be compiled.
PACKAGES=(auto-complete company-mode ecb ESS git-modes helm magit matlab-emacs neotree)

# Compile packages.
for package in ${PACKAGES[*]}
do
    cd $package
    make
    cd ..
done
