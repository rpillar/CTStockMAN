accessing
getChannelCategories

	| channelAPI data myData response |
	
	( self channel = 'EBay' ) ifTrue: [ 
		channelAPI := CTStockMANEBayManage new. 
		channelAPI myEbay credentials: self shopCredentials.
		response := channelAPI getEBayCategories.

		"parse the getCategories response - XML"
		data := self parseGetEBayCategoriesResponse: response.
	].

	"remove existing categories for this channel"
	self session dbResource query: 'delete from channel_categories where channel = ? ' with: (Array with: self channel).
	
	data do: [ :e |
		myData := Array new: 3.
		myData at: 1 put: self channel.
		myData at: 2 put: ( e at: #CategoryName ).	
		myData at: 3 put: ( e at: #CategoryId ).	
		myData := self session dbResource insert: 'channel_categories' fields: #(channel categoryName categoryKey ) with: myData. 
	].

	"return the number of categories found and processed."
	( data size = 0 ) ifTrue: [ ^ 0 ].
	( data size > 0 ) ifTrue: [ ^ data size ].
