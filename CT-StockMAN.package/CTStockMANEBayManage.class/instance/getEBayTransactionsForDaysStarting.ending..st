as yet unclassified
getEBayTransactionsForDaysStarting: startDay ending: endDay

	| response writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get transactions for this time period'.
	writer tag name: 'GetSellerTransactionsRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
		with: [  
			writer 
				tag: 'ModTimeFrom' with: startDay.
			writer 
				tag: 'ModTimeTo' with: endDay.
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
		url: self myEbay url; 
		entity: (
			ZnEntity 
				with: writer asString
				type: ZnMimeType applicationXml
		);
		post;
		response.
		
	^ response.