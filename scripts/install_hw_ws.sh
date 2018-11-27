#!/bin/sh

echo "this will install in the default folders of /usr/local/..."
echo "edit this script if you need something else"

version=`/usr/local/sbin/hiawatha -v | awk -F',' '{ print $1 }'`

echo "version == $version"
echo "hwversn == Hiawatha v$1"

if [ "$version" == "Hiawatha v$1" ]
then

        echo "already installed, exiting"
fi

hver="hiawatha-$1"
mver="monitor-$2"

hwver="$hver.tar.gz"
mtver="$mver.tar.gz"

apk add cmake make libc-dev libxml2-dev libxslt-dev util-linux php7-json php7-fpm


if [ ! -d "/usr/local/src" ]
then
        mkdir -p /usr/local/src/

fi

        cd /usr/local/src/

if [ ! -f "./$hwver" ]
then
        wget https://www.hiawatha-webserver.org/files/"$hwver"
elif [ ! -f "./$mtver" ]
then
        wget https://www.hiawatha-webserver.org/files/"$mtver"
fi

tar -zxf "$hwver"
tar -zxf "$mtver"

if [ ! -d "./$hver/build" ]
then
        mkdir "$hver/build"
fi

echo "$hver"

cd "$hver/build"

cmake ..
make install/strip
