*** Settings ***
Library  DebugLibrary
Library  SeleniumLibrary

*** Test Cases ***
Hello Zalenium
    Open Browser  http://google.com   chrome   remote_url=http://%{ZALENIUM_HOST}:4444/wd/hub
    Input Text    lst-ib              rf-zalenium-runner
    Submit Form
    # Debug
    Sleep         10s
    [Teardown]    Close All Browsers
