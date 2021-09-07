*** Settings ***
Resource                           keywords_general.robot
Resource                           keywords_billing.robot

*** Variables ***

${COMPANY_NAME_1}                   IT Högskolan AB
${COMPANY NAME_2}                   Greve Drakula
${COMPANY_NAME_3}                   Tommy Skärgård

${E-MAIL_1}							jonna.hagberg@iths.se
${ADDRESS_LINE1_1}					Första gatan 1
${ADDRESS_LINE2_1}					Andra gatan 2
${POSTAL_CODE_1}					12345
${STATE_1}							N/A
${CITY_1}							Stockholm
${COUNTRY_1}						SE
${VAT_NUMBER_1}						SE543210123401



*** Keywords ***

# Update Billing information -------------------------------------------

Go to Web Page for Billing information
	Load Page
	Login_Email                         ${URL_USERNAME_JONNA}
	Login_Password                      ${URL_PASSWORD_JONNA}
	Click Element                       xpath://*[@id="app"]/div/main/div/div/div/div/div/div[2]/button/div

Click Update Billing information
	Click element						xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[3]/button/div

Update all Billing information
	Click Update Billing information
	Add Company Name
	Add E-mail
	Add Address Line 1
	Add Address Line 2
	Add Postal Code
	Add City
	Add State
	Add Country
	Add VAT number
	Click element				xpath://*[@id="app"]/div[5]/div/div/div/button/div

# Add all information -------------------------------------------

Add Company Name
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[1]/div/div[1]/div/input		${COMPANY_NAME_1}

Add E-mail
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[2]/div/div[1]/div/input		${E-MAIL_1}

Add City
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[7]/div/div[1]/div/input		${CITY_1}

Add Country
	Set selenium speed			0.7 s
	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[20]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[40]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[60]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[80]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[100]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[120]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[140]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[160]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[180]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[200]/a

	Click Element               class:v-select__selections
	Click Element               xpath://*[@id="app"]/div[1]/div/div/div[209]/a

	#Select from list by label	listitem		${COUNTRY_1}
	#Click element				class:v-list__tile__title
	#Click element    			xpath: //*[contains(text(), "Sweden")]
	#Select from list by index	class:v-list__tile__title		209

Add Address Line 1
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[3]/div/div[1]/div/input		${ADDRESS_LINE1_1}

Add Address Line 2
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[4]/div/div[1]/div/input		${ADDRESS_LINE2_1}

Add Postal Code
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[5]/div/div[1]/div/input		${POSTAL_CODE_1}

Add State
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[6]/div/div[1]/div/input		${STATE_1}

Add VAT number
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[9]/div/div[1]/div/input		${VAT_NUMBER_1}


# Verify input information --------------------------

Verify updated information
	Reload page
	Verify Company Name
	Verify E-mail
	Verify City
	Verify Country
	Verify Address Line 1
	Verify Address Line 2
	Verify Postal code
	Verify State
	Verify VAT number

Verify Company Name
	Sleep						2 s
	${get_company_name}			Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[1]/div/div[2]
	Should be equal				${get_company_name}		${COMPANY_NAME_1}

Verify E-mail
	Sleep						2 s
	${get_e-mail}				Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[2]/div/div[2]
	Should be equal				${get_e-mail}		${E-MAIL_1}

Verify Address Line 1
	Sleep						2 s
	${get_address_line1}		Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[5]/div/div[2]
	Should be equal				${get_address_line1}		${ADDRESS_LINE1_1}

Verify Address Line 2
	Sleep						2 s
	${get_address_line2}		Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[6]/div/div[2]
	Should be equal				${get_address_line2}		${ADDRESS_LINE2_1}

Verify Postal code
	Sleep						2 s
	${get_postal_code}			Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[7]/div/div[2]
	Should be equal				${get_postal_code}		${POSTAL_CODE_1}

Verify State
	Sleep						2 s
	${get_state}				Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[8]/div/div[2]
	Should be equal				${get_state}		${STATE_1}

Verify City
	Sleep						2 s
	${get_city}					Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[3]/div/div[2]
	Should be equal				${get_city}		${CITY_1}

Verify Country
	Sleep						2 s
	${get_country}				Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[4]/div/div[2]
	Should be equal				${get_country}		${COUNTRY_1}

Verify VAT number
	Sleep						2 s
	${get_vat_number}			Get text		xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[2]/div[9]/div/div[2]
	Should be equal				${get_vat_number}		${VAT_NUMBER_1}

