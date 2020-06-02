deleting
deleteCredentials

	| query myCredentials |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbDelete: ( Dictionary newFrom: { #shopId->self shopId } ).

	myCredentials := CTStockMANModelCredentials new.
	myCredentials conn: WACurrentRequestContext value session dbConnection.
	myCredentials conn execute: ( query queryString ).