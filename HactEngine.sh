#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`

dirname=`dirname $0`
tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
    dirname=$PWD/$dirname
fi

export PATH=$dirname/bin:$PATH
export LD_LIBRARY_PATH=$dirname/bin
export QML2_IMPORT_PATH=$dirname/bin/qml
$dirname/bin/$appname "$@"
