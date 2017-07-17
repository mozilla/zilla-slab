# Zilla Slab

A custom family for Mozilla by Typotheque

## Download

To quickly grab the generated fonts you can [download the latest release](https://github.com/mozilla/zilla-slab/releases/latest). You can also find Zilla Slab hosted on [Google Fonts](https://fonts.google.com/specimen/Zilla+Slab) and [Mozilla's own CDN](https://code.cdn.mozilla.net/fonts/zilla-slab.css) to reference in your projects directly. If you would like to generate the fonts from their original source, read on.

## Installation

```
virtualenv env
source env/bin/activate

pip install -r requirements.txt

# dependencies to generate webfonts
brew tap bramstein/webfonttools
brew update
brew install bramstein/webfonttools/sfnt2woff
brew install bramstein/webfonttools/woff2

```

## Generating fonts

build whilst env virtualenv is active
```
cd sources
sh build.sh
```