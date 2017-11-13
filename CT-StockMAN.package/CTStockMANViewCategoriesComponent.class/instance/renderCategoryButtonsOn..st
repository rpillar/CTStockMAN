as yet unclassified
renderCategoryButtonsOn: html

	| categoryComponent myCategory validCategoryInput |
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
								validCategoryInput := self validateCategory.
								( validCategoryInput = '' )
									ifTrue: [ 
										"add shop / credentials data"
										myCategory := self addCategory.
										"create category component and insert into the DOM"
										categoryComponent := CTStockMANViewSettingsShopComponent new.
										"categoryComponent shop: myShop.
										shopComponent shopName: myShop shopName; shopDescription: myShop shopDescription; shopStatus: myShop status.
										self shopName: ''. self shopDescription: ''. self channel: nil."
										s << ( ( s jQuery class: 'no-category-data' ) remove ).
										"s << ( ( s jQuery class: 'category-data' ) append: [ :r | r render: shopComponent ] )."
										s << ( ( s jQuery class: 'category-data' ) show ).
										s << ( JSStream on: '$(''#add-category-modal'').modal(''close'')'  ).
										s << ( JSStream on: '$(''.tooltipped'').tooltip()' ).
									]
									ifFalse: [  
										self messageComponent errorMessage: validCategoryInput. 
										s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ). 
								]	
							] );
						with: 'Save'.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						style: 'margin-left: 12px;background-color:#ef9a9a';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								s << ( JSStream on: '$(''#add-category-modal'').modal(''close'')'  ).
							]
						);
						with: 'Cancel'.				
				]	
			].	