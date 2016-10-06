as yet unclassified
getEBayCategories

	"use with caution - will return details for all categories - lots of data"
	| response writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting; xml; comment: 'ebay - get ebay site categories'.
	writer tag name: 'GetCategoriesRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
		with: [  
			writer 
				tag: 'RequesterCredentials' with: [  
					writer tag: 'eBayAuthToken' with: self myEbay token. 
				].
			writer 
				tag: 'CategorySiteID' with: '3'.
			writer 	
				tag: 'DetailLevel' with: 'ReturnAll'.	
		]. 

	"ebay function ..."
	request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GetCategories'.
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