as yet unclassified
initialize

	super initialize.
	self dbResource: CTDatabaseResource new.
	self database: ( UDBCSQLite3Connection on: '/Users/rpillar/temp/test.db' ).
	database open.
	
	self dbResource database: self database.