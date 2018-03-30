as yet unclassified
dbUpdate

	"update based on the state of the current model."
	| instVars queryString |

	"get fields"
	instVars := self class instVarNames.

	"update table set x = y where id = 1"
	queryString := 'update ', self dbTableName, ' set '.			
	instVars do: [ :i | 
		queryString := queryString, i, '="', ( self instVarNamed: i ) asString, '",' 
	].

	queryString := queryString allButLast.
	queryString := queryString, ' where ', self dbTablePrimaryKey, '= "', ( self instVarNamed: self dbTablePrimaryKey ) asString, '";'.
self halt.
	"execute query ..."
	self database dbConnection execute: queryString.