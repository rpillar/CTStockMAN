rendering
checkShopActiveStatus: aShopName

	| myShop |
	
	myShop := self getShopStatus: ( self utils utilsParseShopName: aShopName ).

	( myShop status = 'Not Active' )
		ifTrue: [ ^ 'ERROR - to retrieve transacttion data the shop must be ACTIVE. Check this shops status setting.' ].
					
	^ ''.