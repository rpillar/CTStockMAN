as yet unclassified
getEBayOfficialTime

	| response writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get official ebay time'.
	writer tag name: 'GeteBayOfficialTimeRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
			with: [  
			writer 
				tag: 'RequesterCredentials' with: [  
					writer tag: 'eBayAuthToken' with: self myEbay token. 
				]
		]. 

	"ebay function ..."
	request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GeteBayOfficialTime'.
	response := self request
		url: 'https://api.sandbox.ebay.com/ws/api.dll'; 
		entity: (
			ZnEntity 
				with: writer asString
				type: ZnMimeType applicationXml
			);
		post;
		response.
		
	^ response.