accessing
renderTransactionDataLineOn: html with: dataObject

	| myShopName |
	myShopName := self parseShopName: ( dataObject at: #shopName ).
	
	html tableRow 
		with: [  
			html tableData 
				with: ( dataObject at: #channel ).
			html tableData 
				with: myShopName.
			html tableData 
				with: ( dataObject at: #startDate ) asDate.
			html tableData 
				with: ( dataObject at: #endDate ) asDate.	
			html tableData 
				with: ( dataObject at: #transaction_count ).
		].