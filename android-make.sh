#/bin/bash
ls $DEPOT_TOOLS_HOME
df -h
fetch --help
echo ==================================================
git --version
alias git=mygit
git --version
fetch --nohooks --no-history breakpad || exit 1
echo ==================================================
gclient help sync  
echo ==================================================
gclient help runhooks  
git --version
alias git=mygit
git --version
df -h
gclient sync -H --no-history || exit 1
git --version
alias
df -h
gclient runhooks --no-history  || exit 1
df -h


