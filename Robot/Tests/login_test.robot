*** Settings ***
Documentation       Testsuite Login
Resource            ../Resources/keywords_general.robot
Library             SeleniumLibrary
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
Test title
    [Tags]    DEBUG


*** Keywords ***
