as yet unclassified
initialize

	super initialize.
	self messageComponent:  CTStockMANViewMessageComponent new. 
	self messageComponent infoMessage: 'Please enter shop details - then Save (or Cancel).'.