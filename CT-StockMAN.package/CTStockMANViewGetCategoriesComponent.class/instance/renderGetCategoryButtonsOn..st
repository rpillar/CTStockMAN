as yet unclassified
renderGetCategoryButtonsOn: html

	| response |
	
	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-top:25px;margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								"channel := CTStockMANEBayManage new. 
								channel myEbay credentials: formCredentials.
								response := channel getEBayOfficialTime."
								s << ( JSStream on: 'console.log(''get_categories'');'  )	
							] );
						with: 'Get Categories'.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						style: 'margin-left: 12px;background-color:#ef9a9a';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								s << ( JSStream on: '$(''#get-categories-modal'').modal(''close'')'  ).
							]
						);
						with: 'Cancel'.				
				]	
			].	