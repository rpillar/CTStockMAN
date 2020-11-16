accessing
checkShopCount

	"do a searchAll rather than a count(*) as I couldn't get this to work consistently"	
	| query myShop |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearchAll.
	
	myShop := CTStockMANModelShop new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myShop resultset: ( myShop processSearchQuery: ( query queryString ) ).
	
	^ myShop resultset size.
	