Feature: Get Account API

	#Scenario 9: 
	#Endpoint = /api/accounts/get-account
	#For primaryPersonId = <One of your accounts already Created
	#Make sure email address is correct. 
	Background: API Setup steps 
		Given url "https://tek-retail-ui.azurewebsites.net/"
		
	Scenario: Get Account API Call with existing account 
		Given path "/api/token"
		And request {"username": "supervisor","password": "tek_supervisor"}
		When method post 
		Then status 200 
		And print response
		* def generatedToken = response.token
		
		Given path "/api/accounts/get-account"
		And param primaryPersonId = 7353
		And header Authorization = "Bearer " + generatedToken
		When method get 
		Then status 200
		And print response 
		And assert response.primaryPerson.id == 7353
		And assert response.primaryPerson.email == "ubaid.samadi1@tekschool.com"
		
		