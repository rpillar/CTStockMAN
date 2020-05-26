table
initialize

	
	super initialize.
	self fields: #( channel shopId shopName shopDescription status update_date ).
	self tableName: 'shops'.
	self primaryKey: 'shopId'.
	self rsPointer: 1.