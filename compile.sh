#!bin/bash
python jemdoc.py index
git add --a
git commit -m"update"
git push
