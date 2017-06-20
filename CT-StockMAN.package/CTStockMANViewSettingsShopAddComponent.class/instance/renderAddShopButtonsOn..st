accessing
renderAddShopButtonsOn: html

	| myCredentials myShop shopComponent validShopInput | 
	
	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light hoverable'; 
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | 
								validShopInput := self validateAddShop.
								( validShopInput = '' )
									ifTrue: [ 
										"add shop / credentials data"
										myShop := self addShop.
										myCredentials := self addCredentials: myShop.
										"create shop component and insert into the DOM"
										shopComponent := CTStockMANViewSettingsShopComponent new.
										shopComponent shop: myShop.
										shopComponent shopName: myShop shopName; shopDescription: myShop shopDescription; shopStatus: myShop status.
										self shopName: ''. self shopDescription: ''. self channel: nil.
										s << ( ( s jQuery class: 'no-shop-data' ) remove ).
										s << ( ( s jQuery class: 'shop-data' ) append: [ :r | r render: shopComponent ] ).
										s << ( ( s jQuery class: 'shop-data' ) show ).
										s << ( ( s jQuery class: 'add-shop-name' ) value: '' ).
										s << ( ( s jQuery class: 'shop-description-entry' ) value: '' ).
										s << ( JSStream on: '$(''#add-shop-modal'').modal(''close'')'  ).
										s << ( JSStream on: '$(''.tooltipped'').tooltip()' ).
										s << ( ( s jQuery class: 'collapsible-body' ) hide ).
									]
									ifFalse: [  
										self messageComponent errorMessage: validShopInput. 
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
								self shopName: ''. self shopDescription: ''. self channel: nil.
								s << ( JSStream on: '$(''#add-shop-modal'').modal(''close'')'  ).
							]
						);
						with: 'Cancel'.				
				]	
			].	