initialize
renderAnalyticsDataframeSelectOn: html
	
	| dataframeList dataframeSelected |
	dataframeList := #( 'Transaction' ).
	dataframeSelected := dataframeList at: 1.
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [  
					html div
						class: 'input-field col s5';
						style: 'margin-left:45px;';
						with: [
							html select
								id: 'dataframe';
								style: 'margin-left:20px;';
								size: 2;	
								list: dataframeList;
								selected: dataframeSelected;
								script: (
 									( html jQuery this )
 									on: 'change'
  									do: ( (	
										( ( JSStream on: 'console.log(this.value)' ) )	,
										( ( html jQuery id: #'df-fields') show )
									) asFunction: #(event) )
								).
							html label 
								attributeAt: 'for' put: 'dataframe';
								with: 'DataFrame'.			
						].
					
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
									"html option 
										disabled;
										attributeAt: 'selected' put: true;
										with: ''."
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
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) ).