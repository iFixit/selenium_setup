#!/bin/sh

curl --remote-name http://selenium-release.storage.googleapis.com/2.41/selenium-server-standalone-2.41.0.jar
curl --remote-name http://chromedriver.storage.googleapis.com/2.9/chromedriver_mac32.zip
unzip chromedriver_mac32.zip
rm chromedriver_mac32.zip
