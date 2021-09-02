*** Settings ***
Documentation                      Testsuite Billing
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_billing.robot
Resource						   ../Resources/keywords_billinginformation.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

User can add billing information
        [Documentation]                 Billing
        [Tags]                          Billing

        Go to Web Page
        Go to Billings Page - http address
        Verify Billing Page Loaded
        Update all Billing information


