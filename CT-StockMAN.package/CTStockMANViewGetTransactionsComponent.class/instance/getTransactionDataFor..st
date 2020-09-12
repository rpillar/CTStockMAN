as yet unclassified
getTransactionDataFor: aShopName

	"check whether we have retrieved any transactionData for the periods that we are currently trying to process."	
	| eDate myTransactionData q1 q2 sDate |
	
	eDate := ( self endDate, ' 23:59:59.999Z'  ) asString.
	sDate := ( self startDate, ' 00:00:00.000Z' ) asString.
	
	q1 := CTDBxQuery new.
	q1 queryTable: 'CTStockMANModelTransactionData'; dbSearch: { { #shopName -> aShopName . #start_date -> { #between . sDate . eDate } } }.
	
	myTransactionData := CTStockMANModelTransactionData new.
	myTransactionData conn: WACurrentRequestContext value session dbConnection.
	myTransactionData resultset: ( myTransactionData processSearchQuery: ( q1 queryString ) ).
	
	( myTransactionData resultset isEmpty ) ifTrue: [ 
		q2 := CTDBxQuery new.
		q2 queryTable: 'CTStockMANModelTransactionData'; dbSearch: { { #shopName -> aShopName . #end_date -> { #between . sDate . eDate } } }.
	
		myTransactionData := CTStockMANModelTransactionData new.
		myTransactionData conn: WACurrentRequestContext value session dbConnection.
		myTransactionData resultset: ( myTransactionData processSearchQuery: ( q2 queryString ) ).
	].
		
	^ myTransactionData resultset.