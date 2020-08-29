accessing
insertChannelCategories: myData

	| myCategory query |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbCreate: ( Dictionary newFrom: { #channel->( myData at: 1 ) . #categoryName->( myData at: 2 ) . #categoryKey->( myData at: 3) } ).

	myCategory := CTStockMANModelCategory new.
	myCategory conn: WACurrentRequestContext value session dbConnection.
	myCategory conn execute: ( query queryString ).