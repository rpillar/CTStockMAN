update
updateShop

	| query myShop |
	
	"update the 'object'"
	self shop at: #shopName put: self shopName.
	self shop at: #shopDescription put: self shopDescription.
	self shop at: #status put: self shopStatus.
	self shop at: #update_date put: Date today yyyymmdd.
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelShop'; dbUpdate: self shop.
	
	myShop := CTStockMANModelShop new.
	myShop conn: WACurrentRequestContext value session dbConnection.
	myShop conn execute: ( query queryString ).