# Zilla Slab

A custom family for Mozilla by Typotheque

## Download

To quickly grab the generated fonts you can [download the latest release](https://github.com/mozilla/zilla-slab/releases/latest). You can also find Zilla Slab hosted on [Google Fonts](https://fonts.google.com/specimen/Zilla+Slab) and [Mozilla's own CDN](https://code.cdn.mozilla.net/fonts/zilla-slab.css) to reference in your projects directly. If you would like to generate the fonts from their original source, read on.

## Installation

```
virtualenv env
source env/bin/activate

pip install -r requirements.txt
```

## Dependencies to generate webfonts
* sfnt2woff
* [woff2](https://github.com/google/woff2)

### Install on MacOS
```
brew tap bramstein/webfonttools
brew update
brew install bramstein/webfonttools/sfnt2woff
brew install bramstein/webfonttools/woff2

```
### Install on Linux
Install the dependencies with the respective package manager for your distribution (eg. apt - Debian-based systems, dnf - Red Hat-based systems, etc)

Note : Compiling [woff2](https://github.com/google/woff2) from source is fairly easy with no additional dependencies (other than the included submodules - [brotli](https://github.com/google/brotli), [terryfy](https://github.com/MacPython/terryfy), [esaxx](https://github.com/hillbig/esaxx)).
#### Debian-based systems (aptitude | apt)
`apt install woff-tools` (provides `sfnt2woff`)

## Generating fonts

build whilst env virtualenv is active
```
cd sources
sh build.sh
```
