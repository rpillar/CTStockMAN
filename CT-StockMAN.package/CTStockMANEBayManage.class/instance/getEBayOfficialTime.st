as yet unclassified
getEBayOfficialTime

	| formattedResponse response writer |

	"note that - encoding set by default to <UTF-8> as required by Ebay. This is currently set explicitly in the <encoding> method - XMLXMLDeclarationWriter class"
	writer := XMLWriter new.
	writer enablePrettyPrinting.
	writer xml encoding: 'UTF-8'.
	writer comment: 'ebay - get official ebay time'.
	writer tag name: 'GeteBayOfficialTimeRequest'; xmlns: 'urn:ebay:apis:eBLBaseComponents'; 
		with: [  
			writer 
				tag: 'RequesterCredentials' with: [  
					writer tag: 'eBayAuthToken' with: self myEbay token. 
				]
		]. 
		
	"set standard headers - credentials etc."
	self myEbay setHeaders.
		
	"ebay function ..."
	self myEbay znClient headerAt: 'X-EBAY-API-CALL-NAME' add: 'GeteBayOfficialTime'.

	response := self myEbay znClient 
		url: self myEbay url; 
		entity: (
			ZnEntity
				with: writer asString asUTF8Bytes
				type: ZnMimeType applicationXml
		);
		post;
		response.
		
	( response statusLine code = 200 ) 
		ifTrue: [  
			formattedResponse := 'Status: ', ( response statusLine code asString ), ' / Message: ', ( response entity asString ).
		]
		ifFalse: [  
			formattedResponse := 'Status: ', '500', ' / Message: ', 'There has been a problem. Please check the format of your request and the system logs for details.'.
		].
	^ formattedResponse.