relation
rShops

	| myShops |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearch: { { #userName -> 'testuser' } }.
	
	myShops := CTStockMANModelShop new.
	myShops conn: WACurrentRequestContext value session dbConnection.
	myShops resultset: ( myShops processSearchQuery: ( query queryString ) ).
	
	^ myShops.