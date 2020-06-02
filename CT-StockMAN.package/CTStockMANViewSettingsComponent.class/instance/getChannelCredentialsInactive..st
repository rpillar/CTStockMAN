accessing
getChannelCredentialsInactive: aChannel

	| channelCredentials query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbSearch: { { #channel -> aChannel } . { #active -> 0 } }.
	
	channelCredentials := CTStockMANModelCredentials new.
	channelCredentials conn: WACurrentRequestContext value session dbConnection.
	channelCredentials resultset: ( channelCredentials processSearchQuery: ( query queryString ) ).
	
	^ channelCredentials size. 