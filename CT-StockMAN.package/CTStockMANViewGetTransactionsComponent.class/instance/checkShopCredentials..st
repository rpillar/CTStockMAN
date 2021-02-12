rendering
checkShopCredentials: aShopName

	| myCredentials |

	myCredentials := self utils utilsGetShopCredentials: ( self utils utilsParseShopName: aShopName ).
	self shopCredentials: ( STON reader on: myCredentials credentials readStream ) next.
		
	( myCredentials active = 'N' ) ifTrue: [ ^ 'ERROR : the shops credentials are not active - please update before retrieving channel categories.' ].
	( myCredentials credentials = '' ) ifTrue: [ ^ 'ERROR : no credentials have been defined for this shop. They are required for this process to work.' ].
	
	"set channel - this will be used later when parsing / processing the transactions."
	self channel: myCredentials channel.
					
	^ ''.