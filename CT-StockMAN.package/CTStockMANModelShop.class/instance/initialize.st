table
initialize

	
	super initialize.
	self fields: #( channel shopId shopName shopDescription status #updateDate ).
	self tableName: 'shops'.
	self primaryKey: 'shopId'.
	self rsPointer: 1.