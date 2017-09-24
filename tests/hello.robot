*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
This Should Run
    Open Browser  browser=chrome  remote_url=http://%{ZALENIUM_HOST}:4444/wd/hub  url=http://google.com
    Close All Browsers
