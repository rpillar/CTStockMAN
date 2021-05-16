rendering
renderPageOrdersOn: html

	| ordersPage |
	ordersPage  := CTStockMANViewOrdersComponent new.
	html render: ordersPage.