*** Settings ***

*** Variables ***


*** Keywords ***

#Insert Click Interactions Here ----------------------------------------------------------------------------------------

Click MainMenu
    Set selenium speed                           1
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[4]/div[1]/nav/div/div[4]/div/button/div/span
    Click Element                                xpath://*[@id="app"]/div[4]/div[1]/nav/div/div[4]/div/button/div/i

Click MainMenu_Billing
    Click Element                                xpath: //*[contains(text(), "Billing")]

Click Card_Panel
    Click Element                                xpath: //*[contains(text(), "Add new card")]

Click Subscription_Option_SecondPaidPlan
    Click Element                                xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div/div[1]/div/div[1]/div[1]/i
    Wait Until Page Contains Element             xpath: //*[contains(text(), "check_circle_outline")]

Click Subscribe_Button
    Click Element                                xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/button/div

Click Update Subscription
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/button[1]/div
    Click Element                                xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/button

Click Update Subscription (Subscription is On Going)
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/button[2]/div
    Click Element                                xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/div[4]/div


Click Subscription_Option_SecondPaidPlan On Update Dialog
    Click Element                                xpath://*[@id="app"]/div[2]/div/div/div/div/div/div[1]

Click Subscription_Option_ThirdPaidPlan On Update Dialog
    Sleep                                        5
    Click Element                                xpath://*[@id="app"]/div[2]/div/div/div/div/div/div[2]

Click Update Subsription On Update Dialog
    Click Element                                xpath://*[@id="app"]/div[2]/div/div/div/div/button/div

#Insert Verify Pages Here ---------------------------------------------------------------------------------------------

Verify Billing Page Loaded
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[1]/div/div[1]/h3
    Page Should Contain                          Billing information

Verify Card_Panel_Opens
    Wait Until Page Contains Element             xpath: //*[contains(text(), "CARD NAME")]
    Page Should Contain                          CARD NAME

Verify Subscription_SecondPaidPlan Loaded
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/div[2]/div
    Page Should Contain                          Period start

Verify New Dialog Paid Plan Options
    Sleep                                        5
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[2]/div/div/div

Verify If Subscription Has Been Updated
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[1]
    Page Should Contain                          Subscription

#Input Interactions Here ---------------------------------------------------------------------------------------------

Input Card Name
    [Arguments]                                  ${search_term}
    Click Element                                xpath://*[@id="payment-form"]/form/div/div/div[1]/div/input
    Input Text                                   xpath://*[@id="payment-form"]/form/div/div/div[1]/div/input            ${search_term}

#Remove Functions

Remove the Subscription && Verify Update
    Sleep                                        3
    Click Element                                xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/button[2]/div
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[2]/div/button[1]/div
    Sleep                                        2



#Refactorisation - Feel free to combine keywords - Make Sure to Make Understandable Refactorisations ------------------------------------------------------

Navigate to Billing Page && Verify Page Loaded
    Click MainMenu
    Click MainMenu_Billing
    Verify Billing Page Loaded

Open Card Panel && Verify Panel Loaded
    Click Card_Panel
    Verify Card_Panel_Opens

Start New Subscription (Second Paid Plan) && Verify Dialog Page
    Click Update Subscription
    Verify New Dialog Paid Plan Options

Chose Second Paid Plan && Click Update
    Click Subscription_Option_SecondPaidPlan On Update Dialog
    Click Update Subsription On Update Dialog

Start New Subscription (Third Paid Plan) && Verify Dialog Page
    Click Update Subscription
    Verify New Dialog Paid Plan Options

Chose Third Paid Plan && Click Update
    Click Subscription_Option_ThirdPaidPlan On Update Dialog
    Click Update Subsription On Update Dialog
    Sleep                                        5

Click Update Subscription && Verify Dialog Opens
    Click Update Subscription
    Verify New Dialog Paid Plan Options
