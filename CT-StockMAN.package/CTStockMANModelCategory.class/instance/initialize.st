Initialization
initialize

	super initialize.
	self fields: #( channel categoryKey categoryName ).
	self tableName: 'category'.
	self primaryKey: #( 'channel' 'categoryName' ).
	self rsPointer: 1.