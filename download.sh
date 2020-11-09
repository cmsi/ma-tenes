#!/bin/sh
. $(dirname $0)/path.sh

if [ -f tenes_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/issp-center-dev/TeNeS/releases/download/v$VERSION_BASE/TeNeS-v$VERSION_BASE.tar.gz
tar zxvf TeNeS-v$VERSION_BASE.tar.gz
mv -f TeNeS-v$VERSION_BASE tenes_$VERSION_BASE
find . -name '._*' | xargs rm -f
tar zcvf tenes_$VERSION_BASE.orig.tar.gz tenes_$VERSION_BASE
rm -rf tenes_$VERSION_BASE TeNeS-v$VERSION_BASE.tar.gz
