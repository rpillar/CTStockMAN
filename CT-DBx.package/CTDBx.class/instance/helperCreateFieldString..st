accessing
helperCreateFieldString: anArray
	
	| fieldsString |
	
	"create the fields portion of the query"
	fieldsString := '('.
	anArray do: [ :each | fieldsString := fieldsString, ( each asString ) ] separatedBy: [ fieldsString := fieldsString , ','].
	fieldsString := fieldsString, ')'.
	
	^ fieldsString.