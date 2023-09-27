#!/bin/bash

extract_version() {
   sed -E 's/^.*[[:space:]]+(([[:digit:]]|\.)+)\.[[:digit:]]+[[:space:]]+$/\1/'
}

if [ $(uname -s) = "Linux" ]
then
   chrome_path=google-chrome
   file_name=linux64/chromedriver-linux64.zip
else
   chrome_path=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
   file_name=mac-x64/chromedriver-mac-x64.zip
fi

chrome_version=$("$chrome_path" --version 2>&1 | extract_version)
curl --remote-name https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
chrome_driver_version=$(curl "https://googlechromelabs.github.io/chrome-for-testing/LATEST_RELEASE_$chrome_version")
echo $chrome_driver_version
chromedriver_url="https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/$chrome_driver_version/$file_name"

echo "$chromedriver_url"
zipfile="$(basename "$file_name")"
curl -o "$zipfile" "$chromedriver_url"

unzip $(basename $file_name .zip)
mv chromedriver-*/chromedriver .
rm -f "$zipfile"
