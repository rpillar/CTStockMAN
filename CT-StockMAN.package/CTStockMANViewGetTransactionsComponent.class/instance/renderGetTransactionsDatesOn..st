rendering
renderGetTransactionsDatesOn: html

	html div 
		class: 'row';
		with: [ 
			self renderGetTransactionsStartDateOn: html.
			self renderGetTransactionsEndDateOn: html.
		].
			
	( self scheduleFlag = 1 ) 
		ifFalse: [  
			html div 
				class: 'row';
				with: [  
					self renderGetTransactionsScheduleDateOn: html.
					self renderGetTransactionsStartTimeOn: html.
				]
		].