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
        [Tags]                          Billing		LT1-20

        Go to Web Page for Billing information
        Navigate to Billing Page && Verify Page Loaded
        Update all Billing information
		Verify updated information


