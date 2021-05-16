initialization
initialize

	super initialize.
	self fields: #( channel shopName #scheduleTime ).
	self tableName: 'transactionScheduleData'.
	self primaryKey: #( channel shopName ).
	self rsPointer: 1.