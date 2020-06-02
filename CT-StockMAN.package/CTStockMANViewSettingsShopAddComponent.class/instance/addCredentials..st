accessing
addCredentials: aShop

	| myCredentials mySTONDict mySTONString query |

	mySTONDict := Dictionary new.
	( aShop channel = 'EBay' ) 
		ifTrue: [  
			( self credentialFieldsEbay ) do: [ :each | mySTONDict at: each asSymbol put: '' ].
			mySTONString := STON toString: mySTONDict.
		].

	"add a skeleton set of credentials for the 'inserted' shop"	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCredentials'; dbCreate: ( Dictionary newFrom: { #channel->self channel . #shopId->aShop shopId  . #shopName->aShop shopName  . #credentials->mySTONString asString . #active->'N' } ).
	
	myCredentials := CTStockMANModelCredentials new.
	myCredentials conn: WACurrentRequestContext value session dbConnection.
	myCredentials conn execute: ( query queryString ).
	
