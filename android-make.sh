#/bin/bash

df -h
fetch --help
fetch --nohooks --no-history webrtc_android || exit 1
df -h
gclient sync --no-history  || exit 1
df -h
gclient runhooks --no-history  || exit 1
df -h


