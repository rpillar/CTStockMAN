as yet unclassified
validateCategory

	( self categoryName = '' ) ifTrue: [ ^ 'A custom category name needs to be entered.' ].
	^ ''.