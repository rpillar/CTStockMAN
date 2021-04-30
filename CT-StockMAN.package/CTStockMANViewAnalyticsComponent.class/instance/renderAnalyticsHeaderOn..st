initialize
renderAnalyticsHeaderOn: html
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [  
					html paragraph 
						style: 'font-size:24px;font-weight:300;margin-left:30px;margin-top:40px;padding:15px 20px; border: 4px solid #26a69a;border-radius:5px';
						with: 'Select a dataframe and a set of attributes that you want to look at. You can choose to view the data as a summary or create a set of custom visualizations. Alternatively you can create your own query to build a dataframe from a disparate set of resources.'.
				]. 
		].	