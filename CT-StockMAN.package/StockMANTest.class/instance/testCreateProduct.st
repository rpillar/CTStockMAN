tests
testCreateProduct
	| product |
	product := CTStockMANProduct new.
	
	product category: 'Accessories'.
	product productName: 'buttons'.
	
	self assert: product category equals: 'Accessories'.
	self assert: product productName equals: 'buttons'.