#!/bin/sh

curl --remote-name https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
curl --remote-name https://chromedriver.storage.googleapis.com/76.0.3809.126/chromedriver_mac64.zip

unzip chromedriver_mac64.zip
rm chromedriver_mac64.zip
