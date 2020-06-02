accessing
validateEditShop
	
	| myShop query |			
	"check if shop data is populated - only continue if okay"
	self shopName = ''
		ifTrue: [ ^ 'Missing data : a Name field must be entered.' ].	

	"check if name has already been used ..."
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearch: { { #shopName -> self shopName } }.

	myShop := CTStockMANModelShop new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myShop resultset: ( myShop processSearchQuery: ( query queryString ) ).
	
	( myShop resultset size > 1 ) ifTrue: [ ^ 'Error : shop names must be unique. Please re-enter.' ].
		
	self shopDescription = ''
		ifTrue: [ ^ 'Missing data : a Description field must be entered.'  ].
				
	^ ''.