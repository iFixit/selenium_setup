#!/bin/sh

curl --remote-name http://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar
curl --remote-name http://chromedriver.storage.googleapis.com/2.24/chromedriver_mac64.zip
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-macosx.zip

unzip phantomjs*.zip
cp phantomjs-1.9.7-macosx/bin/phantomjs .

rm phantomjs*.zip
rm -r phantomjs*-macosx

unzip chromedriver_mac64.zip
rm chromedriver_mac64.zip
