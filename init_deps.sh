#!/bin/sh
git clone https://github.com/salyh/asciidoctor-reveal.js .asciidoctor-reveal.js 
git clone https://github.com/salyh/reveal.js .reveal.js
git clone --depth 1 https://github.com/astefanutti/decktape.git .decktape
curl -L http://astefanutti.github.io/decktape/downloads/phantomjs-osx-cocoa-x86-64 -o .decktape/bin/phantomjs
chmod +x .decktape/bin/phantomjs