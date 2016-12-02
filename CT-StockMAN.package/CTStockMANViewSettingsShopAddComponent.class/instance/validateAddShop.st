as yet unclassified
validateAddShop

	"check if shop data is populated - only continue if okay"
	self shopName = ''
		ifTrue: [ ^ 'Missing data : please enter a Name field.' ].	
	self shopDescription = ''
		ifTrue: [ ^ 'Missing data : please enter a Description field.'  ].
				
	^ ''.