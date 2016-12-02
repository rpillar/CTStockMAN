as yet unclassified
login

	^ DefaultLogin ifNil: [ DefaultLogin := self createLogin ].