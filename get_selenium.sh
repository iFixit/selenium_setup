#!/bin/sh
os=`uname`
if [ $os == "Darwin" ]; then
   driverName="chromedriver_mac64.zip"

   phantomVersion=1.9.7
   phantomName="phantomjs"
   phantomFileName="${phantomName}-${phantomVersion}-macosx.zip"
   phantomFolder="${phantomName}-${$phantomVersion}-macosx"
elif [ $os == "Linux" ]; then
   driverName="chromedriver_linux64.zip"

   phantomVersion=2.1.1
   phantomName="phantomjs"
   phantomFileName="${phantomName}-${phantomVersion}-linux-x86_64.tar.bz2"
   phantomFolder="${phantomName}-${phantomVersion}-linux-x86_64"
fi

wget "http://bitbucket.org/ariya/phantomjs/downloads/$phantomFileName"
curl --remote-name "https://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar"
curl --remote-name "https://chromedriver.storage.googleapis.com/2.24/$driverName"

if [ $os == "Darwin" ]; then
	tar -zxf "$phantomFileName"
elif [ $os == "Linux" ]; then
	tar -jxf "$phantomFileName"
fi

cp "$phantomFolder/bin/phantomjs" .
rm -r "$phantomFileName"
rm -r "$phantomFolder"

unzip $driverName
rm $driverName
