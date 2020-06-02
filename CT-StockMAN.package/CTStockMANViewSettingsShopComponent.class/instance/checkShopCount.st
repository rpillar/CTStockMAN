accessing
checkShopCount

	"| myData |
	myData := self session dbResource query: 'select count(*) from shops'.
	
	^ myData at: 'count(*)' asSymbol."
	
	| query myCount myShop |
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbCount.
	
	myShop := CTStockMANModelShop new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myCount := myShop conn execute: ( query queryString ).
	self halt.
	
	^ myCount.