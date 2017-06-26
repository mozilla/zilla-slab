# Generate Zilla famil and run fonts through ttfautohin

set -e # Stop script if we have any critical errors


# Generate fonts
for font in $(ls -d *.ufo);
do
    fontmake -u $font -a -o ttf
    fontmake -u $font -a -o otf
done

# Tidyup up folders
rm -r master_ttf 
mkdir ../fonts

mv autohinted/master_ttf ../fonts
mv ../fonts/master_ttf ../fonts/ttf
rm -r autohinted

mv master_otf ../fonts
mv ../fonts/master_otf ../fonts/otf

# Generate webfonts
FONTS_TTF=$(ls ../fonts/ttf/*.ttf)

# Generate .woff
for font in $FONTS_TTF
do
    sfnt2woff $font
    woff2_compress $font
done

# Move webfonts to seperate folders
mkdir ../fonts/woff2
mv ../fonts/ttf/*.woff2 ../fonts/woff2/

mkdir ../fonts/woff
mv ../fonts/ttf/*.woff ../fonts/woff/

echo 'done'
