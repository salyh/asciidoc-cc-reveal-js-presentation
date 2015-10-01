#!/bin/sh
./build.sh
rm -f slides_revealjs.tar.gz
tar -czf slides_revealjs.tar.gz target/slides_revealjs.html target/reveal.js/* target/images
echo Created slides_revealjs.tar.gz

