*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Hello Zalenium
    Open Browser  http://google.com   firefox   remote_url=http://${GRID_HOST}:4444/wd/hub
    Input Text    lst-ib              rfdocker
    Submit Form
    Sleep         30s
    [Teardown]    Close All Browsers
