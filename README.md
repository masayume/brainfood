# brainfood
chunks of wisdom


Two files and a script are included.

**latin.proverbs.txt**: This file contains 4,000 Latin proverbs, each on a separate line. You can easily select a random proverb using the shuf command.

**brainfood.infogen.txt**: This file is a continuously growing collection of over 1,000 wisdom quotes and phrases.

**random_chunk.sh**: a Bash script that reads the quotes from brainfood.infogen.txt, which are separated by a special marker (====). It then stores these quotes in an array and randomly selects one to display.


```

echo '===================================='
shuf -n 1  ~/DATA/E/Desktop/DSET/INFO/INFO.my/latin.proverbs.txt
echo '===================================='

usage: random_chunk.sh brainfood.infogen.txt ====

```
