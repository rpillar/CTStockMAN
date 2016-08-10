as yet unclassified
initialize

	super initialize.
	self myEbay: CTStockMANEBay new.
	self request: self znClient.
	
	"set the standard headers"
	request headerAt: 'X-EBAY-API-COMPATIBILITY-LEVEL' add: '889';
		headerAt: 'X-EBAY-API-DEV-NAME' add: myEbay devId;
		headerAt: 'X-EBAY-API-APP-NAME' add: myEbay appId;
		headerAt: 'X-EBAY-API-CERT-NAME' add: myEbay certId;
		headerAt: 'X-EBAY-API-SITEID' add: '3';
		headerAt: 'X-EBAY-API-DETAIL-LEVEL' add: '0';
		headerAt: 'Content-Type' add: 'text/xml'.