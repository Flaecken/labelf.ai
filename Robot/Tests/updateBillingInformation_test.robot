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
        Navigate to Billing Page && Verify Page Loaded
        Update all Billing information
		Verify updated information


