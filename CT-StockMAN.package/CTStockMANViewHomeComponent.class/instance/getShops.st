accessing
getShops

	| myChannels myShops |
	myShops := OrderedCollection new.
	
	myChannels := self session user channels.
	myChannels do: [ :channel | 
			channel shops do: [ :shop |
					myShops add: shop
				]
		].

	^ myShops.

	