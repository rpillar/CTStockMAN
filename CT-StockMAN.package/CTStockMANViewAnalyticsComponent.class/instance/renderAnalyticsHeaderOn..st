initialize
renderAnalyticsHeaderOn: html

	| dataframeList dataframeSelected |
	dataframeList := #( 'Transaction' 'Custom' ).
	dataframeSelected := dataframeList at: 1.
	
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
						style: 'display: none';
						with: [ 
							html select
								id: 'df-fields-select';
								attributeAt: 'multiple' put: true;
								style: 'margin-left:20px;';
								size: 5;	
								with: [  
									html option 
										disabled;
										attributeAt: 'selected' put: true;
										with: 'Choose the fields.'.
									html option 
										attributeAt: 'value' put: 'field1';
										with: 'field1'.
									html option 
										attributeAt: 'value' put: 'field2';
										with: 'field2'.
									html option 
										attributeAt: 'value' put: 'field3';
										with: 'field3'.	
								].
							html label 
								attributeAt: 'for' put: 'df-fields-select';
								with: 'Dataframe fields'.	
						].
				].	
		].

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
						attributeAt: 'disabled' put: 'disabled';
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | self scriptAddShopButtons: s ] 
						);
						with: 'Summary'.			
				]	
		].	
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) ).