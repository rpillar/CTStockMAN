loading
go

	| myUser query |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelUser'; dbSearch: { { #userName -> 'testuser' } }.
	
	myUser := CTStockMANModelUser new.
	myUser conn: self session dbConnection.
	myUser resultset: ( myUser processSearchQuery: ( query queryString ) ).
	self session user: myUser.
	
	self call: CTStockMANViewRootComponent new.