initialization
initialize

	super initialize.
	self fields: #( channel customCategoryName categoryName ).
	self tableName: 'categorydata'.
	self primaryKey: #( 'channel' 'categoryName' ).
	self rsPointer: 1.