accessing
getShops

	| myShops |
	
	myShops := self session dbResource query: 'select * from shops' on: 'CTStockMANModelShop'. 

	^ myShops.