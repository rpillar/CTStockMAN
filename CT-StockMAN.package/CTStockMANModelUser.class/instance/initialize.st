initialization
initialize 

	super initialize.
	self fields: #( password userName ).
	self tableName: 'users'.
	self primaryKey: 'userName'.
	self rsPointer: 1.