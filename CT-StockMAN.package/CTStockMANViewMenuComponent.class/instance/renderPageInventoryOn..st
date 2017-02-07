as yet unclassified
renderPageInventoryOn: html

	| inventoryPage |
	inventoryPage  := CTStockMANViewInventoryComponent new.
	html render: inventoryPage.