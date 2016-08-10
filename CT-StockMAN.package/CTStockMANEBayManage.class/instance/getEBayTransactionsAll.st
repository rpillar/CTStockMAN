as yet unclassified
getEBayTransactionsAll

	| response writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get all ebay transactions'.
	writer tag name: 'GetSellerTransactionsRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
			with: [  
				writer 
					tag: 'DetailLevel' with: 'ItemReturnDescription'.	
				writer 
					tag: 'RequesterCredentials' with: [  
						writer tag: 'eBayAuthToken' with: self myEbay token. 
					].
		]. 

	"ebay function ..."
	request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GetSellerTransactions'.
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