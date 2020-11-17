accessing
getCustomCategory: aChannelCategory

	| myCategories query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategoryData'; dbSearch: { { #channel -> ( self channel asString ) . #categoryName -> aChannelCategory } }.
	
	myCategories := CTStockMANModelCategoryData new.
	myCategories conn: WACurrentRequestContext value session dbConnection.
	myCategories resultset: ( myCategories processSearchQuery: ( query queryString ) ).
	
	(myCategories resultset isEmpty )
		ifTrue: [ ^ '' ].
	
	^ myCategories customCategoryName. 