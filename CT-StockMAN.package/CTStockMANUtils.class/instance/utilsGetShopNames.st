accessing
utilsGetShopNames

	| myChannelNames myChannels myShops  |
	myChannelNames := OrderedCollection new.
	myShops := OrderedCollection new.
	
	myChannels := self session user channels.
	( myChannels resultset size ) timesRepeat: [ 
			myChannelNames add: myChannels channelName.
			( myChannels rShops resultset ) do: [ :shop |
				myShops add: ( ( shop at: #shopName ), ' (', ( myChannels channelName ), ')' ) asString.
			]
		].
	
	"save channel names - used in parse method ..."
	self channelNames: myChannelNames.

	^ myShops asArray.