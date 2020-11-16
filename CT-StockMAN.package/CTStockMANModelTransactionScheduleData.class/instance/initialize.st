initialization
initialize

	super initialize.
	self fields: #( channel shopName schedule_time ).
	self tableName: 'transactionScheduleData'.
	self primaryKey: #( channel shopName ).
	self rsPointer: 1.