as yet unclassified
renderPageDashboardOn: html

	| dashboardPage |
	dashboardPage  := CTStockMANViewHomeComponent new.
	html render: dashboardPage.