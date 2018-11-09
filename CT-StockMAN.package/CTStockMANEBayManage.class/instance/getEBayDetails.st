getdata
getEBayDetails

	| response writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get ebay site categories'.
	writer tag name: 'GeteBayDetailsRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
		with: [  
			writer 
				tag: 'RequesterCredentials' with: [  
					writer tag: 'eBayAuthToken' with: self myEbay token. 
				]
		]. 

	"ebay function ..."
	request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GeteBayDetails'.
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