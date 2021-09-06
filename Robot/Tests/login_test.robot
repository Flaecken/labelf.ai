*** Settings ***
Documentation       Testsuite Login
Resource            ../Resources/keywords_general.robot
Library             SeleniumLibrary
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***

Happy path labelf staging login
    Go to Web Page
    Go to Profile and Confirm Details
    Logout and Confirm




