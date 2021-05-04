initialize
renderAnalyticsDataframeSelectOn: html
	
	| dataframeList dataframeSelected |
	dataframeList := #( 'Transaction' ).
	dataframeSelected := dataframeList at: 1.
	 
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
	
	"html document addLoadScript: ( ( JSStream on: '$(''select'').formSelect({ minimumResultsForSearch: Infinity })' ) )."