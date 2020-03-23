RC1='~/.bashrc'
RC2='~/.zshrc'

FILE='abn.rc'
LINE="source $FILE"

wget "$FILE" https://raw.githubusercontent.com/abngal/rc/master/.abn.rc
grep -qF -- "$LINE" "$RC1" || echo "$LINE" >> "$RC1"
grep -qF -- "$LINE" "$RC2" || echo "$LINE" >> "$RC2"

SOURCE "$FILE"