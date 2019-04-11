#!/bin/bash

chrome_version=$(/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --version 2>&1 | sed -E 's/^.*[[:space:]]+(([[:digit:]]|\.)+)\.[[:digit:]]+[[:space:]]+$/\1/')

file_name=chromedriver_mac64.zip
curl --remote-name https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
chrome_driver_version=$(curl "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$chrome_version")
chromedriver_url="https://chromedriver.storage.googleapis.com/$chrome_driver_version/$file_name"

# Override URL until Facebook's WebDriver gets fixed
chromedriver_url="https://chromedriver.storage.googleapis.com/2.45/chromedriver_mac64.zip"
echo "$chromedriver_url"
curl -o "$file_name" "$chromedriver_url"

unzip $(basename $file_name .zip)
rm -f $file_name
