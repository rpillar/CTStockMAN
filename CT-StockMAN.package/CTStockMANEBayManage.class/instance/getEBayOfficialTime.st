as yet unclassified
getEBayOfficialTime

	| response writer |

	"note that - encoding set by default to <UTF-8> as required by Ebay. This is currently set explicitly in the <encoding> method - XMLXMLDeclarationWriter class"
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
	self myEbay request headerAt: 'X-EBAY-API-CALL-NAME' add: 'GeteBayOfficialTime'.
	response := self myEbay request
		url: self myEbay url; 
		entity: (
			ZnEntity 
				"with: writer asString"
				with: writer asString asUTF8Bytes
				type: ZnMimeType applicationXml
		);
		post;
		response.
		
	^ response.