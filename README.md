# brainfood
Small but indispensable chunks of wisdom from all human history.

![example phrase](https://github.com/masayume/brainfood/blob/main/img/0text.webp "Example phrase")

The following files and one script (random_chunk.sh) to show a random entry are included:

**brainfood.infogen.txt**: This file is a continuously growing collection of over 1,700 wisdom quotes and phrases.

**latin.proverbs.txt**: This file contains 4,000 Latin proverbs, each on a separate line. You can easily select a random proverb using the shuf command.

**writing.infogen.txt**: This file is about writing suggestions from professionals and famous writers.

**kotowaza.infogen.txt**: A small collection of japanese proverbs (kotowaza).

**bias.infogen.txt**: All about bias.

**random_chunk.sh**: a Bash script that reads the quotes from brainfood.infogen.txt, which are separated by a special marker (====). It then stores these quotes in an array and randomly selects one to display.


```
echo '============================================================='
shuf -n 1  ~/DATA/E/Desktop/DSET/INFO/INFO.my/latin.proverbs.txt
echo '============================================================='

usage: random_chunk.sh brainfood.infogen.txt ====
```
