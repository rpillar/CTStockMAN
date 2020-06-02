accessing
getChannelCredentials: aChannel

	| channelCredentials query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbSearch: { { #channel -> aChannel } }.

	channelCredentials := CTStockMANModelCredentials new.
	channelCredentials conn: WACurrentRequestContext value session dbConnection.
	channelCredentials resultset: ( channelCredentials processSearchQuery: ( query queryString ) ).
	
	^ channelCredentials.