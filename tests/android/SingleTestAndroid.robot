*** Settings ***
Library    AppiumLibrary
Resource   ../common/KeywordsFile.robot

*** Variables ***
${APP_ID}=     %{BROWSERSTACK_APP_ID}   #hashed id value can be hard coded here instead of fetching as environment variable.

*** Test Cases ***
Test Wiki app
    Open app
    Search for keyword in wiki app
    Validate wiki test
    Close app

*** Keywords ***
Open app
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}    platformName=android    deviceName=Samsung Galaxy S22   sessionName=single_test   buildName=browserstack-robot-framework
    IMPLICIT WAIT    5