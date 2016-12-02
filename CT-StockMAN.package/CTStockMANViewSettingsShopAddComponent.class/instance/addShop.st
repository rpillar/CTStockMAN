accessing
addShop

	| "myCredentials" myData "myDb" myShop "query" |
	
	"add shop details"
	myData := Array new: 4.
	myData at: 1 put: self shopName.
	myData at: 2 put: self shopDescription.
	myData at: 3 put: self channel.
	myData at: 4 put: 'Not Active'.	
	myShop := self session dbResource insert: 'shops' fields: #(shopName shopDescription channel status) with: myData. 
	
	"return a shop model"
	myShop := CTStockMANModelShop new.
	myShop channel: self channel.
	myShop shopName: self shopName.
	myShop shopDescription: self shopDescription.
	myShop status: 'Not Active'.
	
	^ myShop.
	
