accessing
initialize

	super initialize.
	self fields: #( channelName status userName update_date ).
	self tableName: 'channel'.
	self primaryKey: 'channelName'.
	self rsPointer: 1.