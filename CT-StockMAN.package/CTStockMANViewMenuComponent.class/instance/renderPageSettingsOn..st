as yet unclassified
renderPageSettingsOn: html

	| settingsPage |
	settingsPage  := CTStockMANViewSettingsComponent new.
	html render: settingsPage.