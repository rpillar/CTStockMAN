accessing
checkShopActiveStatus: aShopName

	| myShop |
	
	myShop := self getShopStatus: ( self parseShopName: aShopName ).

	( myShop status = 'Not Active' )
		ifTrue: [ ^ 'ERROR - to retrieve transacttion data the shop must be ACTIVE. Check this shops status setting.' ].
					
	^ ''.