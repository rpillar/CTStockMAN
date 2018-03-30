accessing
helperCreateValuesString: anArray
	
	| valuesString |
	
	"create the values portion of the query"
	valuesString := '('.
	anArray do: [ :each | valuesString := valuesString, '?' ] separatedBy: [ valuesString := valuesString, ',' ].
	valuesString := valuesString, ')'.
	
	^ valuesString.