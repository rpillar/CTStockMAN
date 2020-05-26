initialization
initialize
	
	super initialize.
	
	self channels: self getChannels.
	self shops: self getShops.
	
	"are any of my shops 'active' - if not set summaryData to the 'sample' data structure."
	self shopsActive: false.
	"self channels do: [ :channel | 
			( channel shopsActive )
				ifTrue: [ self shopsActive: true ]
		]."
	
	"get sales / customer / category data"
	( self shopsActive )
		ifTrue: [  ]
		ifFalse: [  ].