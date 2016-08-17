#/bin/bash
df -h

echo fetch ... 
fetch --nohooks --no-history webrtc_android || exit 1
df -h

echo sync ... 
gclient sync --no-history || exit 1
df -h

echo dir .:
ls 

echo dir trunk:
ls trunk

cd trunk
source ./build/android/envsetup.sh
export GYP_DEFINES="$GYP_DEFINES OS=android"
df -h

echo install deps ... 
./build/install-build-deps.sh || exit 1
df -h

echo runhooks ... 
gclient runhooks || exit 1

echo build ... 
ninja -C out/Release

