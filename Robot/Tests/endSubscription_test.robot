*** Settings ***
Documentation                      Testsuite Billing
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_billing.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

User can store a card and chose Second-Paid Plan
        [Documentation]                 Log-In
        [Tags]                          TestTagUnderConstruction

        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Open Card Panel && Verify Panel Loaded
        Input Card Name, Number, MM/YY And CVC As TestObject 1

