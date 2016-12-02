as yet unclassified
initialize

	super initialize.
	self addShopComponent: CTStockMANViewSettingsShopAddComponent new.			
		
	"get settings data - shops / credentials etc."	
	self shops: self getShops.
	self ebayCredentials: ( self getChannelCredentials: 'EBay' ).
		
