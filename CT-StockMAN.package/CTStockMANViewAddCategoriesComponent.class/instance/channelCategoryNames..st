accessing
channelCategoryNames: aChannel
	
	| categoryNames counter myCategoryNames query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbSearch: { { #channel -> ( self channel asString ) } }.
	
	myCategoryNames := CTStockMANModelCategory new.
	myCategoryNames conn: WACurrentRequestContext value session dbConnection.
	myCategoryNames resultset: ( myCategoryNames processSearchQuery: ( query queryString ) ).
	
	counter := 1.
	categoryNames := Array new: myCategoryNames resultset size.
	myCategoryNames resultset do: [ :each |
			categoryNames at: counter put: ( each at: #categoryName ).
			counter := counter + 1.
		].
	^ categoryNames.