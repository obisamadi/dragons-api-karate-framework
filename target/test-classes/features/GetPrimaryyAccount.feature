Feature: Get Primary Account

Background: API Setup Steps 

		Given url "https://tek-retail-ui.azurewebsites.net/"
		* def generatedToken = callonce read ('GenerateToken.feature')
	
Scenario: Get Primary Account API with call
		Given path "/api/accounts/get-primary-account"
		And param primaryPersonId = 7353
		And header Authorization = "Bearer " + generatedToken
		When method get 
		Then status 200 
		And print response 
		And def primaryPerson = response.person
		#And assert response.primaryPerson.id == 7353
		#And assert response.primaryPerson.email == "ubaid.samadi1@tekschool.com"