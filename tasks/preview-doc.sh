[[ $# -ne 1 ]] && exit 1;
FILE_NAME="md_preview_intex.html"
fswatch -0 "$1" | pandoc -f markdown $1 > $FILE_NAME && surf $FILE_NAME
rm $FILE_NAME
