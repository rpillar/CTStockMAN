as yet unclassified
renderContentOn: html

	self wasShown ifTrue: [^ self].
	html div
		class: 'message';
		class: self messageType, 'Message';
		style: 'margin-bottom: 15px;text-align:left;';
		with: [
			html span
				class: 'messageSpan';  
				style: 'font-size:22px;font-weight:300;';
				with: self messageString.
		].	
	self wasShown: true.