*** Settings ***

*** Variables ***

${COMPANY_NAME_1}                   IT Högskolan AB
${COMPANY NAME_2}                   Greve Drakula
${COMPANY_NAME_3}                   Tommy Skärgård

${E-MAIL_1}							jonna.hagberg@iths.se
${ADDRESS_LINE1_1}					Första gatan 1
${ADDRESS_LINE2_1}
${POSTAL_CODE_1}					12345
${STATE_1}							N/A
${CITY_1}							Stockholm
${COUNTRY_1}						Sweden
${VAT_NUMBER_1}						SE543210123401



*** Keywords ***

# Update Billing information -------------------------------------------

Click Update Billing information
	Click element				xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[3]/button/div

Update all Billing information
	Click Update Billing information
	Add Company Name
	Add E-mail
	Add Address Line 1
	Add Postal Code
	Add City
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
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[4]/div/div[1]/div/input

Add Postal Code
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[5]/div/div[1]/div/input			${POSTAL_CODE_1}

Add State
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[6]/div/div[1]/div/input

Add VAT number

