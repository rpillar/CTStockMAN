initialization
initialize 

	super initialize.
	self fields: #( channel credentials shopId shopName active ).
	self tableName: 'credentials'.
	self primaryKey: 'shopId'.
	self rsPointer: 1.