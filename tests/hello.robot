*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Test Cases ***
This Should Run
    Open Browser  browser=chrome  remote_url=http://%{ZALENIUM_HOST}:4444/wd/hub  url=http://google.com
 #   Debug
    Sleep  30
    Close All Browsers
