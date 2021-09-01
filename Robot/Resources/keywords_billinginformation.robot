*** Settings ***

*** Variables ***

${COMPANY_NAME_1}                   IT Högskolan AB
${COMPANY NAME_2}                   Greve Drakula
${COMPANY_NAME_3}                   Tommy Skärgård

${E-MAIL_1}							jonna.hagberg@iths.se
${ADDRESS_LINE1_1}					Första gatan 1
${ADDRESS_LINE2_1}
${POSTAL_CODE_1}					12345
${STATE_1}
${CITY_1}							Stockholm
${COUNTRY_1}						Sweden
${VAT_NUMBER_1}



*** Keywords ***

Go to Billings Page
	Sleep						2 s
	Click button				xpath://*[@id="app"]/div[6]/div[1]/nav/div/div[4]/div/button/div/span
	Sleep						2 s
	Click element				xpath://*[@id="app"]/div[3]/div/div[1]/div[6]/a/div[1]/div
	Wait until page contains	Billing information

Go to Billings Page - http address
	Go to						https://stag.labelf.ai/main/37/settings/billing

Click Update Billing information
	Click element				xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[3]/button/div

Update all Billing information
	Click Update Billing information
	Add Company Name
	Add Address Line 1
	Add Postal Code
	Add City
	Add Country
	Click element				xpath://*[@id="app"]/div[5]/div/div/div/button/div

Add Company Name
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[1]/div/div[1]/div/input		${COMPANY_NAME_1}

Add E-mail
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[2]/div/div[1]/div/input		${E-MAIL_1}

Add City
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[7]/div/div[1]/div/input		${CITY_1}

Add Country
	Sleep						3 s
	Click element				xpath://*[@id="app"]/div[5]/div/div/div/form/div[8]/div/div[1]/div[1]/div[1]
	List selecetion			xpath://*[@id="app"]/div[5]/div/div/div/form/div[8]/div/div[1]/div[1]/div[1]		${COUNTRY_1}
	Sleep						2 s


Add Address Line 1
	Input text					xpath://*[@id="app"]/div[5]/div/div/div/form/div[3]/div/div[1]/div/input		${ADDRESS_LINE1_1}

Add Address Line 2
	Input text				xpath://*[@id="app"]/div[5]/div/div/div/form/div[4]/div/div[1]/div/input

Add Postal Code
	Input text				xpath://*[@id="app"]/div[5]/div/div/div/form/div[5]/div/div[1]/div/input			${POSTAL_CODE_1}

Add State
	Input text				xpath://*[@id="app"]/div[5]/div/div/div/form/div[6]/div/div[1]/div/input

Add VAT number

