validating
validateAddShop

	| shops query |

	"check if shop data is populated - only continue if okay"
	self shopName = ''
		ifTrue: [ ^ 'Missing data : please enter a Name field.' ].	
				
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbSearch: { { #shopName -> self shopName } }.

	shops := CTStockMANModelShop new.
	shops conn: WACurrentRequestContext value session dbConnection.
	shops resultset: ( shops processSearchQuery: ( query queryString ) ).
	
	( shops resultset size = 1 ) ifTrue: [ ^ 'Error : shop names must be unique. Please re-enter.' ].
	
	self shopDescription = '' ifTrue: [ ^ 'Missing data : please enter a Description field.'  ].
				
	^ ''.