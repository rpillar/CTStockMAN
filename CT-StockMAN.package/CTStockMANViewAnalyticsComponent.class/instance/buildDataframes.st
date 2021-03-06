initialize
buildDataframes

	| query myTransactions |
	
	"build the transactions data dataframe"
	self dfTransactions: CTDataFrame new.
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionData'; dbSearchAllWithLimit: 5.
	myTransactions := CTStockMANModelTransactionData new.
	myTransactions conn: WACurrentRequestContext value session dbConnection.
	myTransactions resultset: ( myTransactions processSearchQuery: ( query queryString ) ).
	self dfTransactions dataset: myTransactions resultset.
	self dfTransactions selectAll.

	^ ''.