#!/bin/sh

curl --remote-name http://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar
curl --remote-name https://chromedriver.storage.googleapis.com/2.25/chromedriver_mac64.zip

unzip chromedriver_mac64.zip
rm chromedriver_mac64.zip
