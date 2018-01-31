accessing
renderTransactionDetailsHeaderOn: html

	html tableHead 
		with: [
			html tableRow 
				with: [ 
					html tableHeading 
						with: 'Channel'.
					html tableHeading 
						with: 'Shop'.
					html tableHeading 
						with: 'Date'.
					html tableHeading 
						with: '#Data Records'.
					].
			].