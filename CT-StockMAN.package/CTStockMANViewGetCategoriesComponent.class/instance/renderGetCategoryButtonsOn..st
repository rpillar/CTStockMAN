as yet unclassified
renderGetCategoryButtonsOn: html

	| myChannelAPI response validShopCredentials |

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
							serializeForm;
							script: [ :s | 
								validShopCredentials := self checkShopCredentials: self shopName.
								( validShopCredentials = '' )
									ifTrue: [ 
										response := self getChannelCategories
										s << ( JSStream on: 'console.log(''get_categories'');'  )	
									]
								   ifFalse: [
										self messageComponent errorMessage: validShopCredentials. 
										s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ).  
									]
							] );
						with: 'Get Categories'.
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