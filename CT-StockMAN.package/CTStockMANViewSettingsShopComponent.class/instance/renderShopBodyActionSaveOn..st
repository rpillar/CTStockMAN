as yet unclassified
renderShopBodyActionSaveOn: html

	| validateResult |
	
	html div
		class: 'shop-edit-save';
		style: 'position:absolute;top:40px;left:30px;display:none;';
		with: [ 
			html anchor 	
				class: 'tooltipped';
				style: 'text-decoration: none;cursor:pointer;';
				attributeAt: 'data-position' put: 'right';
				attributeAt: 'data-delay' put: '50';
				attributeAt: 'data-tooltip' put: 'Save';
				script: (
 					( html jQuery this )
 					on: 'click'
 					do: ( (
						"make this an ajax call - update object / update db ..."
						html jQuery ajax
							"callbacks to get field values ..."
							callback: [ :myField | self shopName: myField. ]
							value: ( ( html jQuery class: 'shop-name', self shop shopId asString ) value );
							callback: [ :myField | self shopDescription: myField. ]
							value: ( ( html jQuery class: 'shop-description', self shop shopId asString ) value );
							script: [ :s |  
								"remove any displayed messages"
								s << ( ( s jQuery class: 'editmessage', self shop shopId asString ) remove ).
								"validate input data"
								validateResult := self validateEditShop. 
								( validateResult = '' )
									ifFalse: [ 
										self messageComponent errorMessage: validateResult.
										s << ( ( s jQuery class: 'shop-message', self shop shopId asString ) append: [ :r | self renderShopBodyMessageOn: r ] )  
									]
									ifTrue: [  self updateShop.
										"reset stuff"
										s << ( ( s jQuery class: 'shop-edit' ) cssAt: 'display' put: 'inline' ).
										s << ( ( s jQuery class: 'shop-delete' ) cssAt: 'display' put: 'inline' ).					
										s << ( ( s jQuery class: 'shop-edit-save' ) cssAt: 'display' put: 'none' ).
										s << ( ( s jQuery class: 'shop-edit-cancel' ) cssAt: 'display' put: 'none' ).
										s << ( ( s jQuery class: 'shop-edit-field' ) attributeAt: 'disabled' put: 'disabled' ).
										"update header info"
										s << ( ( s jQuery id: 'header-shopname', self shop shopId asString ) text: self shopName ).
										s << ( ( s jQuery id: 'header-shopstatus', self shop shopId asString ) text: 
											( ( ( self shopStatus ) isNil ) ifTrue: [ self shop status ] ifFalse: [ self shopStatus ] ) ).
										"reset status"
										( self shop status = 'Active' )
											ifTrue: [  
												s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) removeAttribute: 'checked' ).
												s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) attributeAt: 'checked' put: 'checked' ).
											]
											ifFalse: [  
												s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) removeAttribute: 'checked' ).
												s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) attributeAt: 'checked' put: 'checked' ).
											].
									]
							]
					) asFunction: #(event) )
				);
				with: [ 
					html italic 
						class: 'fa fa-floppy-o';
						style: 'color:#26a69a;font-size:2.5rem;'.
				].
		].