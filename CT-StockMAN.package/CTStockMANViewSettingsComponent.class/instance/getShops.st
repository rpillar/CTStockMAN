as yet unclassified
getShops

	| myShops |
	
	myShops := self session dbResource query: 'select shopId,shopName,shopDescription,channel,status from shops' on: 'CTStockMANModelShop'. 

	^ myShops.