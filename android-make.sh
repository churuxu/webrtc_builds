#/bin/bash

df
fetch --help
fetch --nohooks --no-history webrtc_android || exit 1
df
gclient sync || exit 1
df
gclient runhooks || exit 1
df


