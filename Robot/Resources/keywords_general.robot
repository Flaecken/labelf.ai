*** Settings ***

*** Variables ***

${BROWSER}                      chrome
${URL_LOGIN}                    https://stag.labelf.ai/login
${URL_HOMEPAGE}                 https://stag.labelf.ai/main/34/datasets/view
${URL_TITLE}				    Labelf
${URL_USERNAME_STEFAN}          stefan_nikolic@hotmail.com
${URL_PASSWORD_STEFAN}          iths123

${CARDNAME_1}                   Stefan Nikolic
${CARDNAME_1}                   Greve Drakula
${CARDNAME_1}                   Tommy Skärgård

#Test Cards for Billing-tests
${TEST_CARD_1_VISA}             4242424242424242
${TEST_CARD_2_VISA_DEBIT}       000056655665556
${TEST_CARD_3_MASTERCARD}       5555555555554444


#Pay in mind -> CVC Any 3 digit && Any future date works!


*** Keywords ***
Begin Web Test
    Open browser                        about:blank             ${BROWSER}
    Maximize Browser Window
    Set selenium timeout                10

Go to Web Page
    Load Page
    Login-Session
    Verify Page Loaded

Load Page
    Go to                               ${URL_LOGIN}

Login_Email
    [Arguments]                         ${search_term}
    Click Element                       xpath://*[@id="app"]/div/main/div/div/div/div/div/div[1]/form/div[1]/div[2]/div[1]/div/input
    Input Text                          name:login     ${search_term}

Login_Password
    [Arguments]                         ${search_term}
    Click Element                       xpath://*[@id="password"]
    Input Text                          id:password     ${search_term}

Login-Session
    Login_Email                         ${URL_USERNAME_STEFAN}
    Login_Password                      ${URL_PASSWORD_STEFAN}
    Click Element                       xpath://*[@id="app"]/div/main/div/div/div/div/div/div[2]/button/div

Verify Page Loaded
    ${LINK_TEXT}                        Get Title
    Should Be Equal                     ${LINK_TEXT}      Labelf
    Wait Until Page Contains Element    xpath://*[@id="app"]/div[5]/div[1]/nav/div/div[1]
    Page Should Contain                 Labelf

End Web Test
    Close Browser


