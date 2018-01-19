*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Hello Zalenium
    Open Browser  http://google.com   chrome   remote_url=http://${GRID_HOST}:4444/wd/hub
    Input Text    lst-ib              rf-zalenium-runner
    Submit Form
    Sleep         10s
    [Teardown]    Close All Browsers
