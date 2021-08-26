*** Settings ***

*** Variables ***


*** Keywords ***

#Insert Click Interactions Here
Click MainMenu
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[4]/div[1]/nav/div/div[4]/div/button/div/span
    Click Element                                xpath://*[@id="app"]/div[4]/div[1]/nav/div/div[4]/div/button/div/i

Click MainMenu_Billing
    Click Element                                xpath: //*[contains(text(), "Billing")]

Click Card_Panel
    Click Element                                xpath: //*[contains(text(), "Add new card")]

#Insert Verify Pages Here

Verify Billing Page Loaded
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[1]/h3
    Page Should Contain                          Billing information

Verify Card_Panel_Opens
    Wait Until Page Contains Element             xpath: //*[contains(text(), "CARD NAME")]
    Page Should Contain                          CARD NAME

#Input Interactions Here
Input Card Name
    [Arguments]                                  ${search_term}
    Click Element                                xpath://*[@id="payment-form"]/form/div/div/div[1]/div/input
    Input Text                                   xpath://*[@id="payment-form"]/form/div/div/div[1]/div/input            ${search_term}

Input Card Number
    [Arguments]                                  ${search_term}
    Click Element                                xpath://*[@id="card-element"]
    Wait Until Page Contains Element             xpath://*[@id="card-element"]
    Input Text                                   xpath://*[@id="card-element"]                                          ${search_term}

Input MM/YY
    [Arguments]                                  ${search_term}
    Click Element                                xpath://*[@id="root"]/form/div/div[2]/span[2]
    Input Text                                   xpath://*[@id="root"]/form/div/div[2]/span[2]                          ${search_term}

Input CVC
    [Arguments]                                  ${search_term}
    Click Element                                xpath://*[@id="root"]/form/div/div[2]/span[3]/span/span/input
    Input Text                                   xpath://*[@id="root"]/form/div/div[2]/span[3]/span/span/input          ${search_term}

#Refactorisation - Feel free to combine keywords - Make Sure to Make Understandable Refactorisations
Navigate to Billing Page && Verify Page Loaded
    Click MainMenu
    Click MainMenu_Billing
    Verify Billing Page Loaded

Open Card Panel && Verify Panel Loaded
    Click Card_Panel
    Verify Card_Panel_Opens


Input Card Name, Number, MM/YY And CVC As TestObject 1
    Set selenium speed              2
    Set selenium timeout            10
    Input Card Name                 ${CARDNAME_1}
    Input Card Number               ${TEST_CARD_1_VISA}
    Input MM/YY                     0322
    Input CVC                       123

