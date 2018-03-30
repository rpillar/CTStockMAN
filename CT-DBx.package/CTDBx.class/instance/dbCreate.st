as yet unclassified
dbCreate

	| arrayCounter fieldsString instVars myData query valuesString |

	"get fields"
	instVars := self class instVarNames.
	
	"create the fields portion of the query"
	fieldsString := self helperCreateFieldString: instVars.
		
	"create the values portion of the query"
	valuesString := self helperCreateValuesString: instVars.

	"create the data values - based on the current state of the class instance."
	myData := Array new: ( instVars size ).
	arrayCounter := 1.
	instVars do: [ :i |
		myData at: arrayCounter put: ( self instVarNamed: ( i asString ) ).  
		arrayCounter := arrayCounter + 1.
	].
	
	"the full query string ..."	
	query := 'insert into ', self dbTableName, ' ', fieldsString, ' values ', valuesString.

	"execute query ..."
	self database dbConnection execute: query with: myData.