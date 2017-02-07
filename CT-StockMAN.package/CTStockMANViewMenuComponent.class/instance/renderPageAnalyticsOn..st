as yet unclassified
renderPageAnalyticsOn: html

	| analyticsPage |
	analyticsPage  := CTStockMANViewAnalyticsComponent new.
	html render: analyticsPage.