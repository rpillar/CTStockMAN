initialize
initialize

	super initialize.
	"self dbConnection: ( UDBCSQLite3Connection on: '/Users/richardpillar/temp/test.db' )."
	self dbConnection: ( UDBCSQLite3Connection on: '/Users/richa/temp/test.db' ).
	dbConnection open.