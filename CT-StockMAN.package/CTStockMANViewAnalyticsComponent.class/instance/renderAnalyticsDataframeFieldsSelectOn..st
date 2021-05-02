initialize
renderAnalyticsDataframeFieldsSelectOn: html
				
	html div 
		class: 'col s1'.
					
	html div 
		id: 'df-fields';
		class: 'input-field col s5';
		"style: 'display: none';"
		with: [ 
			html select
			id: 'df-fields-select';
			attributeAt: 'multiple' put: true;
			style: 'margin-left:20px;';
			size: 5;	
			with: [  
				self dfFields do: [ :f |
					html option 
					attributeAt: f put: f;
					attributeAt: 'selected' put: false;
					with: f.
				].
			].
		html label 
			attributeAt: 'for' put: 'df-fields-select';
			with: 'Dataframe Fields (select ...)'.	
	].
	
	"html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) )."