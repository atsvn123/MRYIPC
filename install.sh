cd $(dirname $(echo $0))
mkdir -p ${PWD}/{usr/lib/,var/jb/usr/lib/}
#make clean package THEOS_PACKAGE_SCHEME=rootless
find .theos/_/ -name "*.dylib" -exec cp -a {} ${PWD}/var/jb/usr/lib/ \;
mkdir -p ${THEOS}/lib/iphone/rootless/
cp -a ${PWD}/MRYIPCCenter.h ${THEOS}/include/
make clean package
find .theos/_/ -name "*.dylib" -exec cp -a {} ${PWD}/usr/lib/ \;
cp -a ${PWD}/usr/lib/libmryipc.dylib ${THEOS}/lib/
cp -a ${PWD}/var/jb/usr/lib/libmryipc.dylib ${THEOS}/lib/iphone/rootless
cp -a ${PWD}/include/ ${THEOS}/include/
find $THEOS/sdks -type f -name "*.tbd" -exec sed -i '' 's/platform:              (null)/platform:              ios/g' {} \;
