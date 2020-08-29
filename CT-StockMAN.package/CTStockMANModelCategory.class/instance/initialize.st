intialization
initialize

	super initialize.
	self fields: #( channel categoryKey categoryName ).
	self tableName: 'category'.
	self primaryKey: 'channel'.
	self rsPointer: 1.