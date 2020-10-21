accessing
getShopNames

	| myChannelNames myShops myShopNames |
	myChannelNames := OrderedCollection new.
	myShopNames := OrderedCollection new.
	
	myShops := self session user rShops.
	myShops resultset do: [ :shop | 
			myChannelNames add: ( shop at: #channel ).
			myShopNames add: ( ( shop at: #shopName ), ' (', (shop at: #channel ), ')' ) asString.
		].
	
	"save channel names - used in parse method ..."
	self channelNames: myChannelNames.

	^ myShopNames asArray.