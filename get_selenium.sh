#!/bin/sh

curl --remote-name https://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-macosx.zip

os=`uname`
if [ $os == "Darwin" ]; then
   driverName="chromedriver_mac64.zip"
   phantomFileName="phantomjs-1.9.7-macosx.zip"
   phantomFolder="phantomjs-1.9.7-macosx"
elif [ $os == "Linux" ]; then
   driverName="chromedriver_linux64.zip"
   phantomFileName="phantomjs-2.1.1-linux-x86_64.tar.bz2"
   phantomFolder="phantomjs-2.1.1-linux-x86_64"
fi

curl --remote-name "https://chromedriver.storage.googleapis.com/2.24/" + "$driverName"
curl --remote-name "https://bitbucket.org/ariya/phantomjs/downloads/" + "$phantomFileName"

#unzip phantomjs*.zip
tar -zjxf "$phantomFileName"
cp "$phantomFolder"/bin/phantomjs .

rm "$phantomFileName"
rm -r phantomjs*-macosx

unzip $driverName
rm $driverName
