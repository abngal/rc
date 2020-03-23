# temp file to load rc scripts from github, can be deleted

RC1='~/.bashrc'
RC2='~/.zshrc'

FILE='.abn.rc'
LINE="source $FILE"

rm -f $FILE
wget "$FILE" https://raw.githubusercontent.com/abngal/rc/master/.abn.rc
grep -qF -- "$LINE" "$RC1" || echo "$LINE" >> "$RC1"
grep -qF -- "$LINE" "$RC2" || echo "$LINE" >> "$RC2"

source "$FILE"
