as yet unclassified
getEBaySellerList

	| startDate endDate response writer |

	startDate := ( ( Date today yyyymmdd ) asDateAndTime ) asUTC.
	endDate := ( ( ( Date today - 1 ) yyyymmdd ) asDateAndTime ) asUTC.

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get ebay seller list'.
	writer tag name: 'GetSellerListRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
		with: [  
			writer 
				tag: 'RequesterCredentials' with: [  
					writer tag: 'eBayAuthToken' with: self myEbay token. 
				].
			writer 
				tag: 'StartTimeFrom' with: startDate asString.
			writer 
				tag: 'StartTimeTo' with: endDate asString.
		]. 

	"ebay function ..."
	request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GetSellerList'.
	response := self request
		url: self myEbay url; 
		entity: (
			ZnEntity 
				with: writer asString
				type: ZnMimeType applicationXml
		);
		post;
		response.
		
	^ response.