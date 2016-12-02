as yet unclassified
getChannelCredentials: aChannel

	| credentials myArgsArray |
	
	myArgsArray := Array new: 1.
	myArgsArray at: 1 put: aChannel.
	
	credentials := self session dbResource query: 'select channel,credentials,shopName from credentials where channel = ?' with: myArgsArray  on: 'CTStockMANModelCredentials'. 
self halt.
	^ credentials.