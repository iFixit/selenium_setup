#!/bin/sh

curl --remote-name https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar
curl --remote-name https://chromedriver.storage.googleapis.com/2.38/chromedriver_mac64.zip

unzip chromedriver_mac64.zip
rm chromedriver_mac64.zip
