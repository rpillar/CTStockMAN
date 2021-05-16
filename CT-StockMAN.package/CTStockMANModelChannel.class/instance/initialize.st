initialize
initialize

	super initialize.
	self fields: #( channelName status userName #updateDate ).
	self tableName: 'channel'.
	self primaryKey: 'channelName'.
	self rsPointer: 1.