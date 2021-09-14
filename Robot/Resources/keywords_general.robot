*** Settings ***

*** Variables ***

${BROWSER}                      chrome
${URL_LOGIN}                    https://stag.labelf.ai/login
${URL_HOMEPAGE}                 https://stag.labelf.ai/main/34/datasets/view
${URL_BILLING}                  https://stag.labelf.ai/main/34/settings/billing
${URL_TITLE}				    Labelf

${URL_USERNAME_STEFAN}          stefan_nikolic@hotmail.com
${URL_PASSWORD_STEFAN}          ITHS123
${URL_USERNAME_JONNA}          	jonna.hagberg@iths.se
${URL_PASSWORD_JONNA}          	mjuk20

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
    Wait until page contains			Welcome! Please add some data
    Page Should Contain                 It looks like you do not have any datasets in here.

Go to Profile and Confirm Details
    wait until page contains element    xpath://html/body/div[1]/div/div[4]/div[1]/nav/div/div[5]/div/button
    click button                        xpath://html/body/div[1]/div/div[4]/div[1]/nav/div/div[5]/div/button
    wait until page contains            ${URL_USERNAME_STEFAN}
    click element                       xpath://*[@id="app"]/div[3]/div/div[1]/div[2]/a
    wait until page contains            User Profile
    page should contain                 ${URL_USERNAME_STEFAN}

Logout and Confirm
    wait until page contains element    xpath://html/body/div[1]/div/div[3]/div[1]/nav/div/div[5]/div/button
    click button                        xpath://html/body/div[1]/div/div[3]/div[1]/nav/div/div[5]/div/button
    wait until page contains            Logout
    click element                       xpath://*[@id="app"]/div[2]/div/div[3]/div/a/div[1]/div
    wait until page contains            Logged out


End Web Test
    Close Browser


