initialize
buildDataframes

	| query myTransactions |
	
	"build the first dataframe - in our case the transactions data dataframe"
	self dfTransactions: CTDataFrame new.
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionData'; dbSearchAllWithLimit: 5.
	myTransactions := CTStockMANModelTransactionData new.
	myTransactions conn: WACurrentRequestContext value session dbConnection.
	myTransactions resultset: ( myTransactions processSearchQuery: ( query queryString ) ).
	self dfTransactions dataset: myTransactions resultset.
	self dfTransactions selectAll.
	
	self dfFields: ( dfTransactions dataset first keys ).
	
	self dataframe: dfTransactions.

	^ ''.