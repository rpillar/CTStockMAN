relation
rChannels

	| myChannels |

	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelChannel'; dbSearch: { { #userName -> 'testuser' } }.
	
	myChannels := CTStockMANModelChannel new.
	myChannels conn: WACurrentRequestContext value session dbConnection.
	myChannels  resultset: ( myChannels processSearchQuery: ( query queryString ) ).
	
	^ myChannels.