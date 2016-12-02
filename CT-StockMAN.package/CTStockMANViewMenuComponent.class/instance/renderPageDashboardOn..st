as yet unclassified
renderPageDashboardOn: html

	| dashboardPage |
	dashboardPage  := CTStockMANViewSettingsComponent new.
	html render: dashboardPage.