cd $(dirname $(echo $0))
mkdir -p ${PWD}/{usr/lib/,var/jb/usr/lib/}
find .theos/_/ -name "*.dylib" -exec cp -a {} ${PWD}/var/jb/usr/lib/ \;
mkdir -p ${THEOS}/lib/iphone/rootless/
cp -a ${PWD}/var/jb/usr/lib/libmryipc.dylib ${THEOS}/lib/iphone/rootless
find .theos/_/ -name "*.dylib" -exec cp -a {} ${PWD}/usr/lib/ \;
cp -a ${PWD}/usr/lib/libmryipc.dylib ${THEOS}/lib/
