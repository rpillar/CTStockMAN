rendering
renderContentOn: html

	"Analytics page ..."	
	html div 
		with: [  
			html div 
				class: 'page-title';
				with: 'Analytics'.
		].
		
	self renderAnalyticsHeaderOn: html.
	self dfFields ifNil: [ 
		html div 
			with: [ 
				html paragraph
					with: [  
						html span 
							style: 'font-size: 24px; border-bottom: 3px solid teal';
							with: 'No transaction data has been found'.
					]
			]
	]
	ifNotNil: [ 
		self renderAnalyticsDataframeSelectOn: html.
		self renderAnalyticsDataframeSummarizeButtonOn: html.
	].

	html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) ) .
	html document addLoadScript: ( ( JSStream on: 
		'$(''#testanalytics'').on( ''click'', function() { 
			console.log( ''You pressed me ...'');
	      $.ajax({
         		url: ''http://localhost:8082/transactions'',
         		contentType: ''application/json'',
        		type: ''GET'',
        		data: JSON.stringify({ "where": { "date": "2017-08-19" }, "fields": [ "date", "amount" ] }),
        		dataType: ''json'',
         		success: function(data,status) {
         			console.log(''It worked ...'');
	     		},
        		error: function(jqXHR,status,error) {
        			console.log( ''A problem has occurred - please try again.'' );
        		}
      		});
		})' 
	) ).