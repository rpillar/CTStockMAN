initialize
initialize

	super initialize.
	self dbConnection: ( UDBCSQLite3Connection on: '/Users/richardpillar/temp/test.db' ).
	dbConnection open.