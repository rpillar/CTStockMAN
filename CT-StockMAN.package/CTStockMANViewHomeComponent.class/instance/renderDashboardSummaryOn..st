as yet unclassified
renderDashboardSummaryOn: html

	html div 
		class: 'row dashboard-header';
			with: [  
				html div 
					class: 'col s12';
					with: [
						
						html div 
							class: 'col s3';
							style: 'border-right: 1px solid lightgray;';
							with: [  
								html definitionList 
									with: [ 
										html definitionTerm 
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Sales (YTD)'. 
											].
										html definitionData 
											class: 'dashboard-income-figure center-align';
											with: '185,152'.
										html definitionData 
											class: 'dashboard-income-percent center-align';
											with: [
												html span
													with: '12%'.
												html italic	
													class: 'material-icons';
													style: 'margin-left:20px;font-size:4rem;color:#009688;';
													with: 'trending_up'.  
											].			
								]
							].
						html div 
							class: 'col s3';	
							style: 'border-right: 1px solid lightgray;';	
							with: [  
								html definitionList 
									with: [ 
										html definitionTerm 
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Gross Margin'.
											].	
										html definitionData 
											class: 'dashboard-income-figure center-align';
											with: '34,762'.	
										html definitionData 
											class: 'dashboard-income-percent center-align';
											with: [
												html span
													with: '5%'.
												html italic	
													class: 'material-icons';
													style: 'margin-left:20px;font-size:4rem;color:#009688;';
													with: 'trending_up'.  
											].	
									]			
							].	
						html div 
							class: 'col s6';
							with: [  
								html definitionList 
									class: 'col s12';
									with: [ 
										html definitionTerm 
											class: 'dashboard-income-title center-align';
											with: [ 
												html span 
													class: 'border-under';
													with: 'Customers'.
											].	
										html definitionData 
											class: 'dashboard-cust-title center-align';
											with: [  
												html span 
													class: 'col s4 right-align';
													with: 'Number :'.
												html span 
													class: 'col s2 dashboard-cust-figure left-align';
													with: ' 4,231'.
												html span
													class: 'col s2 dashboard-cust-figure left-align';
													with: '5%'.
												html italic	
													class: ' col s4 material-icons left-align';
													style: 'font-size:2rem;color:#009688;';
													with: 'trending_up'.  	
											].
										html definitionData 
											class: 'dashboard-cust-subtitle center-align';
											with: [  
												html span 
													class: 'col s4 right-align';
													with: 'Avg. Spend :'.
												html span 
													class: 'col s2 dashboard-cust-figure left-align';
													with: ' 12.34'.
												html span
													class: 'col s2 dashboard-cust-figure left-align';
													with: '2%'.
												html italic	
													class: ' col s4 material-icons left-align';
													style: 'font-size:2rem;color:#009688;';
													with: 'trending_up'.
											].
										html definitionData 
											class: 'dashboard-cust-subtitle center-align';
											with: [  
												html span 
													class: 'col s4 right-align';
													with: 'Avg. Items :'.
												html span 
													class: 'col s2 dashboard-cust-figure left-align';
													with: ' 1'.
												html span
													class: 'col s2 dashboard-cust-figure left-align';
													with: '2%'.
												html italic	
													class: ' col s4 material-icons left-align';
													style: 'font-size:2rem;color:#ef5350;';
													with: 'trending_down'.
											].
									]
							].	  				  
					]
			].

