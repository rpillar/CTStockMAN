initialize
initialize

	super initialize.
	self server: ( Teapot configure: {
  		#defaultOutput -> #json.
  		#port -> 8082.
	} ).
	
	self setRoutes.
	self dbResource: CTDatabaseResource new.
	self database: ( UDBCSQLite3Connection on: '/Users/rpillar/temp/test.db' ).
	self database open.
	
	self dbResource database: self database.