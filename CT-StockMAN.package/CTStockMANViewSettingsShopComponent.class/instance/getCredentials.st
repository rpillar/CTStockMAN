deleting
getCredentials

	| myShopCredentials query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbSearch: { { #shopId -> ( self shopId ) } }.
	
	myShopCredentials := CTStockMANModelCredentials new.
	myShopCredentials conn: WACurrentRequestContext value session dbConnection.
	myShopCredentials processSearchQuery: ( query queryString ).