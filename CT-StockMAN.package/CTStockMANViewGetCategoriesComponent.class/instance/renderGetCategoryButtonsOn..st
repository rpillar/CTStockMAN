as yet unclassified
renderGetCategoryButtonsOn: html

	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-top:25px;margin-bottom: 20px;';
				with: [ 
					self renderGetCategoryButtonGetCategoryOn: html.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						style: 'margin-left: 12px;background-color:#ef9a9a';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								s << ( JSStream on: '$(''#get-categories-modal'').modal(''close'')'  ).
								s << ( ( s jQuery class: 'get-categories-modal-content' ) remove ).	
							]
						);
						with: 'Cancel'.				
				]	
			].	