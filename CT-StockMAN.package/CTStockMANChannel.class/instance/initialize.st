initialization
initialize
	super initialize.
	
	self znClient: ZnClient new.
	self znClient ifFail: [ :exception | Transcript show: exception printString. ].