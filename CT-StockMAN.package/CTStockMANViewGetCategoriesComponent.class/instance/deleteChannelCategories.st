accessing
deleteChannelCategories

	| myCategory query |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbDelete: ( Dictionary newFrom: { #channel->self channel } ).

	myCategory := CTStockMANModelCategory new.
	myCategory conn: WACurrentRequestContext value session dbConnection.
	myCategory conn execute: ( query queryString ).