accessing
getShopStatus: aShopName

	| myShop query |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearch: { { #shopName -> aShopName } }.
	
	myShop := CTStockMANModelTransactionScheduleData new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myShop resultset: ( myShop processSearchQuery: ( query queryString ) ).
	
	^ myShop.