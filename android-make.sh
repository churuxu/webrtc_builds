#/bin/bash

df -h
fetch --help
fetch --nohooks --no-history webrtc_android || exit 1
echo ==================================================
gclient help sync  
echo ==================================================
gclient help runhooks  
alias git=mygit
df -h
gclient sync -H  || exit 1
df -h
gclient runhooks --no-history  || exit 1
df -h


