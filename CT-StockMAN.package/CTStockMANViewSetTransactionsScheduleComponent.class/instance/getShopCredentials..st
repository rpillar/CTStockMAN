accessing
getShopCredentials: aShopName

	| myShopCredentials query |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbSearch: { { #shopName -> aShopName } }.
	
	myShopCredentials := CTStockMANModelCredentials new.
	myShopCredentials conn: WACurrentRequestContext value session dbConnection.
	myShopCredentials resultset: ( myShopCredentials processSearchQuery: ( query queryString ) ).
	
	^ myShopCredentials.