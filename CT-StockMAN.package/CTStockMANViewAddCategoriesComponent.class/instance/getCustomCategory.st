accessing
getCustomCategory

	| myCategories query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbSearch: { { #channel -> ( self channel asString ) . #categoryName -> self channelCategory } }.
	
	myCategories := CTStockMANModelCategory new.
	myCategories conn: WACurrentRequestContext value session dbConnection.
	myCategories resultset: ( myCategories processSearchQuery: ( query queryString ) ).
	
	(myCategories isEmpty )
		ifTrue: [ ^ '' ].
		
	^ ( myCategories at: 1 ) customCategoryName. 