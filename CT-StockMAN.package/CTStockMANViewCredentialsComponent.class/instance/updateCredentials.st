accessing
updateCredentials

	| credentials mySTONString query |

	mySTONString := STON toString: self formCredentials.
	shopCredentials credentials: mySTONString.

	"add credentials details"
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbUpdate: ( Dictionary newFrom: { #shopId->(self shop  at: #shopId) . #credentials->mySTONString . #active->shopCredentials active } ).

	credentials := CTStockMANModelCredentials new.
	credentials conn: WACurrentRequestContext value session dbConnection.
	credentials conn execute: ( query queryString ).