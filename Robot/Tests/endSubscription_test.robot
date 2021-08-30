*** Settings ***
Documentation                      Testsuite Payment Plans
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_billing.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Open "Update Subscription"-Dialog
        [Documentation]                 Log-In
        [Tags]                          LT1-86
        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Click Update Subscription && Verify Dialog Opens

Update Third Paid Plan Once More & Cancel The Subscription
        [Documentation]                 Log-In
        [Tags]                          LT1-87
        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Start New Subscription (Third Paid Plan) && Verify Dialog Page
        Chose Third Paid Plan && Click Update
        Remove the Subscription && Verify Update

Update Second Paid Plan && Verify Any Change
        [Documentation]                 Log-In
        [Tags]                          LT1-88
        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Start New Subscription (Second Paid Plan) && Verify Dialog Page
        Chose Second Paid Plan && Click Update
        Verify If Subscription Has Been Updated



