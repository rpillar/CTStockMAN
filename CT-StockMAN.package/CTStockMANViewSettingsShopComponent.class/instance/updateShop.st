update
updateShop

	"update the 'object'"
	self shop shopName: self shopName.
	self shop shopDescription: self shopDescription.
	self shop status: self shopStatus.

	"update the db"
	self session dbResource update: 'shops' on: 'CTStockMANModelShop' with: self shop.