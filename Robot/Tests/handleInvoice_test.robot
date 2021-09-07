*** Settings ***
Documentation                      Testsuite Invoice Management
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_billing.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Automate Invoice Functions
        [Documentation]                 Happy path for the whole management of invoice procedure
        [Tags]                          LT1-138
        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Verify Upcomming And Finalize Invoice Box
        Click Browser History In Finalized Invoices
        Verify Invoice Page Loaded
        Click View Invoice Details && Verify Details Loaded