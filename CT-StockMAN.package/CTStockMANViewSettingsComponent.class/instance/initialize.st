initialization
initialize
	
	super initialize.
	"self addShopComponent: CTStockMANViewSettingsShopAddComponent new."			
		
	"get settings data - shops / credentials etc."	
	self shops: self getShops.
	self channelCategories: self getChannelCategories.
 
	self ebayCredentials: ( self getChannelCredentials: 'EBay' ).
	self shopifyCredentials: ( self getChannelCredentials: 'Shopify' ).
		
