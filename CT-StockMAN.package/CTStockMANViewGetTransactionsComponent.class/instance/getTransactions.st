as yet unclassified
getTransactions

	"get transaction data and store it."
	| channelAPI data myTransactionData query response responseDict |
	
	"note that for Ebay the dates must be in Zulu format - so update with defaults."
	( self channel = 'EBay' ) ifTrue: [ 
		channelAPI := CTStockMANEBayManage new. 
		channelAPI myEbay credentials: self shopCredentials.
		response := channelAPI getEBayTransactionsForDaysStarting: ( self startDate, 'T', '00:00:00.000Z' ) ending: ( self endDate, 'T', '23:59:59.999Z' ).

		responseDict := Dictionary new.
		( response code = 500 ) 
			ifFalse: [
				"parse the getCategories response - XML"
				data := self parseGetEBayTransactionsResponse: response.
			]
			ifTrue: [ 
				responseDict at: #message put: 'There has been a problem. Please check the format of your request and the system logs for details.'.
				responseDict at: #dataCount put: 0.
				^ responseDict.
			].
	].
	
	"store details of the request."
	myTransactionData := CTStockMANModelTransactionData new.
	myTransactionData conn: WACurrentRequestContext value session dbConnection.
	
	data do: [ :e |
		query := CTDBxQuery new.
		query queryTable: 'CTStockMANModelTransactionData'; dbCreate: ( Dictionary newFrom: { #channel->self channel . #shopName->self shopName . #retrieval_date -> ( Timespan current asDateAndTime ) . #start_date -> ( self startDate, 'T00:00:00.000Z' ) . #end_date -> ( self endDate, 'T23:59:59.999Z' ) . #transaction_count -> ( e at: #TotalNumberOfEntries ) } ).
		myTransactionData conn execute: ( query queryString ).
	].

	"return the number of transactions retrieved."
	responseDict at: #message put: 'Success'.
	responseDict at: #dataCount put: ( data size ).
	^ responseDict.