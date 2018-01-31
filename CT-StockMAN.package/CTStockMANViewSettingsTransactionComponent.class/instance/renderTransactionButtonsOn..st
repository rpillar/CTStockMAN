accessing
renderTransactionButtonsOn: html

	html div 
		class: 'row get-transactions';
		style: 'margin-top:35px;';
		with: [ 
			self renderTransactionButtonsGetTransactionsOn: html.
			self renderTransactionButtonsScheduleGetTransactionsOn: html.
		].