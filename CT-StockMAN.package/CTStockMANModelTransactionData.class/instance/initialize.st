accessing
initialize

	
	super initialize.
	self fields: #( channel shopName retrieval_date start_date end_date schedule_date schedule_time processed transaction_count ).
	self tableName: 'transactionData'.
	self primaryKey: #( channel shopName ).
	self rsPointer: 1.