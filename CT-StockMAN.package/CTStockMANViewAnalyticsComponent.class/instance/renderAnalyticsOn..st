initialize
renderAnalyticsOn: html
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [  
					self renderAnalyticsDataframeSelectOn: html.
					self renderAnalyticsDataframeFieldsSelectOn: html.
				].	
		].

	html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) ).