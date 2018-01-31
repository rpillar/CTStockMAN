accessing
renderTransactionDetailsOn: html

	| transactionData |
	transactionData := self getTransactionData.
	
	( transactionData size > 0 )
		ifTrue: [  
			html div 
				with: [  
					html table 
						class: 'transaction-management-table bordered';
						with: [ 
							self renderTransactionDetailsHeaderOn: html.
							html tableBody 
								with: [  
									html tableRow 
										with: [  
											html tableData 
												with: 'EBay'.
											html tableData 
												with: 'Could this work'.
											html tableData 
												with: '28-12-2017'.
											html tableData 
												with: '21,112'
										]
								]
						]
				]
		]
		ifFalse: [  
			html div 
				with: [  
					html paragraph
						style: 'font-size:18px;font-weight:500;margin-bottom:10px;margin-top:5px;';
						with: 'No transaction data has currently been retrieved.'
				]
		]