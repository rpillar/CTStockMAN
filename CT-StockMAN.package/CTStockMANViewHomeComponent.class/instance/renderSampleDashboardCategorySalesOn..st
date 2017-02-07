as yet unclassified
renderSampleDashboardCategorySalesOn: html

	| categoryData categorySummary |
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				with: [ 
					html heading level: 3; 
						style: 'font-weight:300;font-size:2rem;margin-left:50px;'; 
						with: [
							html span
								class: 'border-under';
								with: 'CATEGORY SALES'.
						]		
				]
			].
	
	"get summary data - model data that is used by the view."	
	"categoryData do: [ :each |
			categorySummary := CTStockMANViewHomeCategorySummaryComponent new.
			categorySummary 
				category: each category; 
				sales: each sales;
				volume: each volume;
				margin: each margin.
			self renderCategorySummaryDataOn: html with: categorySummary.
		]."
	
	"hack to ensure that the charts are rendered at the correct size !!!"
	html document addLoadScript: ( ( JSStream on: '$(''.summaryChart'').hide()' ) ).