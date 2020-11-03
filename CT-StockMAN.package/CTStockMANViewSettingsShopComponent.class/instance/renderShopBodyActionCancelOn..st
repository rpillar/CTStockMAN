rendering
renderShopBodyActionCancelOn: html

	html div
		class: 'shop-edit-cancel';
		style: 'position:absolute;top:95px;left:30px;display:none;';
		with: [ 
			html anchor 	
				class: 'tooltipped';
				style: 'text-decoration: none;cursor:pointer;';
				attributeAt: 'data-position' put: 'right';
				attributeAt: 'data-delay' put: '50';
				attributeAt: 'data-tooltip' put: 'Cancel';
				script: (
 					( html jQuery this )
 					on: 'click'
 					do: ( (
						html jQuery ajax
							script: [ :s |
								s << ( ( s jQuery class: 'shop-name', ( self shopId ) asString ) value: self shopName ).
								s << ( ( s jQuery class: 'shop-description', ( self shopId ) asString ) value: self shopDescription ).
								( self shopStatus = 'Active' ) 
									ifTrue: [ 
										s << ( ( s jQuery id: 'shop-status-active', ( self shopId ) asString ) propertyAt: 'checked' put:'checked' ).
									]
									ifFalse: [  
										s << ( ( s jQuery id: 'shop-status-inactive', ( self shopId ) asString ) propertyAt: 'checked' put:'checked' ).
									].
								s << ( ( s jQuery class: 'shop-edit' ) cssAt: 'display' put: 'inline' ).
								s << ( ( s jQuery class: 'shop-delete' ) cssAt: 'display' put: 'inline' ).
								s << ( ( s jQuery class: 'shop-edit-save' ) cssAt: 'display' put: 'none' ).
								s << ( ( s jQuery class: 'shop-edit-cancel' ) cssAt: 'display' put: 'none' ).
								s << ( ( s jQuery class: 'shop-edit-field' ) attributeAt: 'disabled' put: 'disabled' ).
								s << ( ( s jQuery class: 'editmessage', self shopId asString ) remove ).
								s << ( ( s jQuery id: 'shop-delete-component', self shopId asString ) cssAt: 'display' put: 'none' ).
							]
 					) asFunction: #(event) )
 				);	
				with: [ 
					html italic 
						class: 'fa fa-ban';
						style: 'color:#ef9a9a;font-size:2.5rem;'.
				].
		].