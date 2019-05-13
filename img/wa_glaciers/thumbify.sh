rm -f *-thumb.jpg
if [ ! -d thumbs ]; then
    mkdir thumbs
fi
 
mogrify  -format jpg -path thumbs -thumbnail 250x250 *.jpg

for f in `ls thumbs/*jpg`; do e=`basename $f`; mv $f ${e%.*}-thumb.jpg; done
