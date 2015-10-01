#!/bin/sh
echo "Building src/docs/slides.adoc (reveal.js and html5)"
rm -rf target/
mkdir -p target
cp -r src/docs/images target/
cp -r .reveal.js/ target/reveal.js/
asciidoctor -a allow-uri-read -b revealjs -T .asciidoctor-reveal.js/templates/slim -o target/slides_revealjs.html src/docs/slides.adoc
asciidoctor -a allow-uri-read -b html5 -a toc2 -o target/slides_html5.html src/docs/slides.adoc