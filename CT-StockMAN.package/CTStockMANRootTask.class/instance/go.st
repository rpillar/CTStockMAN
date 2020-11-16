loading
go

	| myUser query scheduler |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelUser'; dbSearch: { { #userName -> 'testuser' } }.
	
	myUser := CTStockMANModelUser new.
	myUser conn: self session dbConnection.
	myUser resultset: ( myUser processSearchQuery: ( query queryString ) ).
	self session user: myUser.
	
	"not sure about this - should really only have one scheduler per image ..."
	scheduler := TaskScheduler new.
	self session scheduler: scheduler.
	self session scheduler start.
	
	self call: CTStockMANViewRootComponent new.