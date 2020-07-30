deleting
deleteShop

	| query myShop |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbDelete: ( Dictionary newFrom: { #shopId->self shopId } ).

	myShop := CTStockMANModelShop new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myShop conn execute: ( query queryString ).