retrieve
getTransactionData: req
	
	"assumes a JSON string - <where> will describe the key / values being requested and <fields> the data that you want returned."
	| myKeyCount queryString selectString stonData transactions |
	stonData := ( STON reader on: req entity contents readStream ) next.

	"process 'where' clause"
	myKeyCount := 1.
	queryString := ' where '.
	( stonData at: #where ) keysDo: [ :value | 
		queryString := queryString, value, ' = ? '.
		( myKeyCount < ( stonData at: #where ) size ) ifTrue: [ queryString := queryString, ' and '  ].
		myKeyCount := myKeyCount + 1.
	].

	"create the select string and get data - returns a dictionary"	
	selectString := 'select '.
	( stonData at: #fields ) do: [ :field | selectString := selectString, field asString ] separatedBy: [ selectString := selectString , ',' ].
	transactions := self dbResource query: ( selectString, ' from transactions ', queryString ) with: ( stonData at: #where ) values.
	( transactions isNil ) ifTrue: [ ^ '{}' ].
	
	"remove additional keys returned as part of the query."
	( transactions data ) keysDo: [ :key | 
		 ( key isNumber ) ifTrue: [ ( transactions data ) removeKey: key ]
	].

	"turn a collection of objects into a json structure."
	"^ String streamContents: [ :stream | 
   		(NeoJSONWriter on: stream)
      		mapInstVarsFor: CTStockMANModelTransaction;
      		nextPut: transactions ]."
	
	^ String streamContents: [ :stream | (NeoJSONWriter on: stream) nextPut: ( transactions data ) ].
