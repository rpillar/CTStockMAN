as yet unclassified
renderGetCategoriesFormOn: html

	html div
		class: 'modal-content get-categories-modal-content';
		with: [ 
			html div 
				with: [
					self renderGetCategoriesActionCloseOn: html.
					html heading 
						level: 3; 
						style: 'margin-left:40px;';
						with: 'Get Channel Categories'.
				].
			html div 
				class: 'row get-categories-block';
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
															self messageComponent infoMessage: 'Please select a shop and then GET CATEGORIES in order to retrieve the category details for its channel. Please note that all existing details will be over-written.'.
															html render: self messageComponent.
														].	
	 		 										html form
														class: 'form form-horizontal';
														with: [ 
															html div 
																class: 'col s12';
																with: [ self renderGetCategoriesShopSelectOn: html ].	
															html div 
																class: 'col s12';
																with: [ self renderGetCategoryButtonsOn: html ].
														].
												].
										].
								].
						].
				].
		].