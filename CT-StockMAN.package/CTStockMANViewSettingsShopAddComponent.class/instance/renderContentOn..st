accessing
renderContentOn: html
	
	html div 
		id: 'add-shop-modal';
		class: 'modal bottom-sheet';
		style: 'z-index:1003;display:none;opacity:0;bottom:-100%;max-height:80%;border-top:8px solid #000;';
		with: [ 
			html div 
				class: 'modal-content';
				with: [
					self renderAddShopActionCloseOn: html.
					html heading 
						level: 3; 
						style: 'margin-left:40px;';
						with: 'Add Shop'.
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
										with: [ 
											html div 
												class: 'login-form';
												with: [									
													html div 
														with: [ 
															html div 
																class: 'col s12 messageComponent';
																style: 'margin-top:10px;';
																with: [ 
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
			].		 
		].		