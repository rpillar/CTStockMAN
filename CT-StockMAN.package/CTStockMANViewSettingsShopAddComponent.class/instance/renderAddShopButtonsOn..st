accessing
renderAddShopButtonsOn: html

	| credentialsComponent myCredentials myShop shopComponent validShopInput | 
	
	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | 
								validShopInput := self validateAddShop.
								( validShopInput = '' )
									ifTrue: [ 
										"add shop / credentials data"
										myShop := self addShop.
										myCredentials := self addCredentials.
										"create shop / credentials components and insert into the DOM"
										shopComponent := CTStockMANViewSettingsShopComponent new.
										shopComponent shop: myShop.
										credentialsComponent := CTStockMANViewSettingsCredentialsComponent new.
										credentialsComponent credentials: myCredentials.
										self shopName: ''. self shopDescription: ''. self channel: nil.
										s << ( ( s jQuery class: 'no-shop-data' ) remove ).
										s << ( ( s jQuery class: 'shop-entry-block' ) remove ).
										s << ( ( s jQuery class: 'shop-data' ) append: [ :r | r render: shopComponent ] ).
										s << ( ( s jQuery class: 'shop-data' ) show ).
										s << ( ( s jQuery class: 'add-shop' ) show: 0.2 seconds ).
										( myShop channel = 'EBay' )
											ifTrue: [ 
												s << ( ( s jQuery class: 'ebay-no-credential-data' ) remove ).
												s << ( ( s jQuery class: 'ebay-credential-data' ) append: [ :r | r render: credentialsComponent ] ).
												s << ( ( s jQuery class: 'ebay-credential-data' ) show ).
											].
										( myShop channel = 'Shopify' )
											ifTrue: [ 
												s << ( ( s jQuery class: 'shopify-no-credential-data' ) remove ).
												s << ( ( s jQuery class: 'shopify-credential-data' ) append: [ :r | r render: credentialsComponent ] ).
												s << ( ( s jQuery class: 'shopify-credential-data' ) show ).
											].
									]
									ifFalse: [  
										self messageComponent infoMessage: validShopInput. 
										s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ). 
								]	
							]
							);
						with: 'Save'.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						style: 'margin-left: 12px;background-color:#ef9a9a';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								self shopName: ''. self shopDescription: ''. self channel: nil.
								s << ( ( s jQuery id: 'shop-entry' ) slideUp: 0.2 seconds ). 
								s << ( ( s jQuery class: 'add-shop' ) show: 0.2 seconds ). 
								s << ( ( s jQuery class: 'shop-entry-block ' ) remove ). 
							]
						);
						with: 'Cancel'.				
				]	
			].	