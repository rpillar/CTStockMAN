accessing
getChannelCategories

	| myChannelAPI response |
	
	myChannelAPI := CTStockMANEBayManage new. 
	myChannelAPI myEbay credentials: self shopCredentials.
	response := myChannelAPI getEBayCategories.
	
	self halt.
	^ ''.
