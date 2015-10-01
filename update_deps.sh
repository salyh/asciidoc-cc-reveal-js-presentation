#!/bin/sh
cd .asciidoctor-reveal.js
git pull
cd ..
cd .reveal.js
git pull
cd ..
cd .decktape
git pull
curl -L http://astefanutti.github.io/decktape/downloads/phantomjs-osx-cocoa-x86-64 -o bin/phantomjs
chmod +x bin/phantomjs
cd ..
git pull