# Generate Zilla famil and run fonts through ttfautohin

set -e # Stop script if we have any critical errors

REPO_ROOT=$(git rev-parse --show-toplevel)
SRC_DIR=$REPO_ROOT/sources
FONT_DIR=$REPO_ROOT/fonts

# Generate fonts
for font in $(ls -d $SRC_DIR/*.ufo);
do
    fontmake -u $font -a -o ttf
    fontmake -u $font -a -o otf
done

# Tidyup up folders
rm -r master_ttf 
rm -rf $FONT_DIR
mkdir $FONT_DIR

mv autohinted/master_ttf $FONT_DIR/ttf
rm -r autohinted

mv master_otf $FONT_DIR/otf

# Generate webfonts
FONTS_TTF=$(ls $FONT_DIR/ttf/*.ttf)

# Generate .woff
for font in $FONTS_TTF
do
    sfnt2woff $font
    woff2_compress $font
done

# Move webfonts to seperate folders
mkdir $FONT_DIR/woff
mv $FONT_DIR/ttf/*.woff $FONT_DIR/woff/

mkdir $FONT_DIR/woff2
mv $FONT_DIR/ttf/*.woff2 $FONT_DIR/woff2/

echo 'done'
