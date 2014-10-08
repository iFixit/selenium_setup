#!/bin/sh

curl --remote-name http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar
curl --remote-name http://chromedriver.storage.googleapis.com/2.9/chromedriver_mac32.zip
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-macosx.zip

unzip phantomjs*.zip
rm phantomjs*.zip

unzip chromedriver_mac32.zip
rm chromedriver_mac32.zip
