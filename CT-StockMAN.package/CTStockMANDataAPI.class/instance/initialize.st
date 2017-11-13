initialize
initialize

	| "secureServer" |
	super initialize.
	
	"secureServer := (ZnSecureServer on: 8082)
      certificate: '/Users/rpillar/privkey.pem';
      logToTranscript;
      start;
      yourself."
	self server: ( Teapot configure: {
		"#znServer -> secureServer."
  		#defaultOutput -> #json.
  		#port -> 8082.
	} ).
	
	self setRoutes.
	self dbResource: CTDatabaseResource new.
	self database: ( UDBCSQLite3Connection on: '/Users/rpillar/temp/test.db' ).
	self database open.
	
	self dbResource database: self database.