accessing
getShopNames

	| myChannelNames myChannels myShops |
	myChannelNames := OrderedCollection new.
	myShops := OrderedCollection new.
	
	myChannels := self session user channels.
	myChannels resultset do: [ :ch | 
			myChannelNames add: ( ch at: #channelName ).
			myChannels shops resultset do: [ :shop |
				myShops add: ( ( shop at: #shopName ), ' (', ( shop at: #channel ), ')' ) asString.
			]
		].
	
	"save channel names - used in parse method ..."
	self channelNames: myChannelNames.

	^ myShops asArray.