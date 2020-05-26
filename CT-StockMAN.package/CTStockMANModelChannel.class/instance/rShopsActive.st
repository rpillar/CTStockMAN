relation
rShopsActive

	
	| myShops |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearch: { { #channel -> self channelName } . { #status -> 'Active' } }.
	
	myShops := CTStockMANModelShop new.
	myShops conn: WACurrentRequestContext value session dbConnection.
	myShops processSearchQuery: ( query queryString ).
	
	( myShops isNotEmpty )
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ].