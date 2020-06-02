accessing
getShops

	| myChannels myShops shop |
	myShops := OrderedCollection new.
	
	myChannels := self session user channels.
	( myChannels resultset size ) timesRepeat: [
		shop := myChannels rShops.
		myShops add: shop.
		myChannels next.
	].

	^ myShops.

	