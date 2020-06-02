accessing
addShop

	| shop1 shop2 q1 q2 |
	
	"add shop details"
	q1 := CTDBxQuery new.
	q1 queryTable: 'CTStockMANModelShop'; dbCreate: ( Dictionary newFrom: { #shopName->self shopName . #shopDescription->self shopDescription  . #channel->self channel . #status->'Not Active' . #username->self session user userName } ).

	shop1 := CTStockMANModelShop new.
	shop1 conn: WACurrentRequestContext value session dbConnection.
	shop1 conn execute: ( q1 queryString ).

	q2 := CTDBxQuery new.
	q2 queryTable: 'CTStockMANModelShop'; dbSearch: { { #shopName -> self shopName } }.
	
	shop2 := CTStockMANModelShop new.
	shop2 conn: WACurrentRequestContext value session dbConnection.
	shop2 resultset: ( shop2 processSearchQuery: ( q2 queryString ) ).
	
	^ shop2.
	
