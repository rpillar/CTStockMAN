as yet unclassified
renderContentOn: html
	
	html div 
		class: 'row credentials-entry-block';
		with: [
			html div 
				class: 'col s12';
				style: 'border-bottom:1px solid lightgray;'.
			
			html div 
				class: 'row';
				with: [ 
					html div 
						class: 'col s12';
						style: 'border: 3px solid lightgray;border-radius:5px;';
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
													self messageComponent infoMessage: 'Please enter the credential details - then Save (or Cancel).'.
													html render: self messageComponent.
												].	
	 		 								html form
												class: 'form form-horizontal';
												with: [ 
													"html div 
														class: 'col s12';
														with: [ self renderAddCredentialsChannelOn: html ]."
													html div 
														class: 'col s12';
														with: [ self renderAddCredentialsButtonsOn: html ].
												]
										]	
								].		
						].
				].					
		]. 