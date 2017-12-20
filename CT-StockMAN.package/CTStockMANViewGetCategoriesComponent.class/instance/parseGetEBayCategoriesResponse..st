accessing
parseGetEBayCategoriesResponse: aResponse

	| count data dict doc oc result |
	doc := XMLDOMParser parse: aResponse content.

	"return a orderedcollection of dictionaries - with elements CategoryId / CategoryName"
	result := doc nodes elementAt: 'GetCategoriesResponse'.
	count := ( result nodes elementAt: 'CategoryCount' ) contentString.
	data := ( result nodes elementAt: 'CategoryArray' ) nodes.
	oc := OrderedCollection new.
	data collection do: [ :e | 
		dict := Dictionary new. 
		dict at: #CategoryName put: ( ( e nodes elementAt: 'CategoryName' ) contentString ). 
		dict at: #CategoryId put: ( ( e nodes elementAt: 'CategoryID' ) contentString ). 
		oc add: dict. 
	].
	
	^ oc.