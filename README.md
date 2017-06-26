# Zilla Slab
A custom family for Mozilla by Typotheque


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