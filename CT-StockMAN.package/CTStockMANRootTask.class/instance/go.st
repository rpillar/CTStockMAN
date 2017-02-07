as yet unclassified
go

	| myUser myArgs |
	
	"set the test user for now ..."
	myArgs := Array new: 1.
	myArgs at: 1 put: 'testuser'.
	
	myUser := self session dbResource query: 'select userName, password from user where userName = ?' with: myArgs on: 'CTStockMANModelUser'.
	self session user: ( myUser at: 1 ).
	
	self call: CTStockMANViewRootComponent new.