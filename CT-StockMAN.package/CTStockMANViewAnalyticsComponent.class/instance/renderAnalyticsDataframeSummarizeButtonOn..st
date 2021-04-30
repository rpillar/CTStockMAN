initialize
renderAnalyticsDataframeSummarizeButtonOn: html

	html div 
		class: 'row';
		with: [	
			html div
				class: 'col s6';
				style: 'margin-left:45px;margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						"attributeAt: 'disabled' put: 'disabled';"
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | self scriptAnalyticsSummaryButton: s ] 
						);
						with: 'Summary'.			
				]	
		].	