accessing
getCategories

	| myCategories query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbSearchAll.
	
	myCategories := CTStockMANModelCategory new.
	myCategories conn: WACurrentRequestContext value session dbConnection.
	myCategories resultset: ( myCategories processSearchQuery: ( query queryString ) ).
	
	^ myCategories.