accessing
getShopNames

	| myChannels myShops |
	myShops := OrderedCollection new.
	
	myChannels := self session user channels.
	myChannels do: [ :ch | 
			ch shops do: [ :shop |
					myShops add: shop shopName.
				]
		].

	^ myShops asArray.