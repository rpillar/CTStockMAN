accessing
renderContentOn: html
	
	html div 
		class: 'row shop-entry-block';
		with: [
			html div 
				class: 'col s12';
				style: 'border-bottom:1px solid lightgray;'.
			
			html div 
				class: 'row';
				with: [ 
					html div 
						class: 'col s12';
						style: 'border: 3px solid lightgray;border-radius:5px;background-color:#eceff1;';
						with: [ 
							html div 
								class: 'login-form';
								with: [									
									html div 
										with: [ 
											html div 
												class: 'col s12';
												style: 'margin-top:10px;';
												with: [ 
													self messageComponent infoMessage: 'Please enter shop details - then Save (or Cancel).'.
													html render: self messageComponent.
												].	
	 		 								html form
												class: 'form form-horizontal';
												with: [ 
													html div 
														class: 'col s12';
														with: [ self renderAddChannelSelectOn: html ].			
													html div 
														class: 'col s12';
														with: [ self renderAddShopNameOn: html ].
													html div 
														class: 'col s12';
														with: [ self renderAddShopDescriptionOn: html ].		
													html div 
														class: 'col s12';
														with: [ self renderAddShopButtonsOn: html ].
												]
										]	
								].		
						].
				].					
		]. 