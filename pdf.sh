./build.sh
echo Creating target/slides_plain.pdf
asciidoctor -a allow-uri-read -r asciidoctor-pdf -b pdf src/docs/slides.adoc -o target/slides_plain.pdf
cd target/
#../.deck2pdf/bin/deck2pdf --profile=revealjs slides_revealjs.html slides_deck2pdf.pdf
echo Creating target/slides_decktape.pdf
../.decktape/bin/phantomjs ../.decktape/decktape.js reveal slides_revealjs.html slides_decktape.pdf
cd ..
