#!bin/bash
python3 jemdoc.py index

# add google analytics script
insert_line=8
sed -e "${insert_line}r google_script.txt" index.html > temp.html
cp temp.html index.html
rm temp.html

git add --a
git commit -m"update"
git push
