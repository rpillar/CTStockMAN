accessing
getChannelCategories

	| myCategories |
	
	myCategories := self session dbResource query: 'select * from channel_categories' on: 'CTStockMANModelCategory'. 

	^ myCategories.