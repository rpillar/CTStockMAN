accessing
initialize

	
	super initialize.
	self fields: #( channel shopName #retrievalDate #startDate #endDate #scheduleDate #scheduleTime processed transaction_count ).
	self tableName: 'transactionData'.
	self primaryKey: #( channel shopName ).
	self rsPointer: 1.