accessing
renderShopHeaderOn: html

	html div 
		class: 'collapsible-header';
		script: (
  			( html jQuery this )
      			on: 'click'
      			do: ( (
					html jQuery ajax
						script: [ :s |
							s << ( ( s jQuery class: 'shop-name', self shop shopId asString ) value: self shop shopName ).
							s << ( ( s jQuery class: 'shop-description', self shop shopId asString ) value: self shop shopDescription ).
							( self shop status = 'Active' ) 
								ifTrue: [ 
									s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) propertyAt: 'checked' put:'checked' ).
								]
								ifFalse: [  
									s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) propertyAt: 'checked' put:'checked' ).
								].
							"s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) propertyAt: 'checked' put: 
								( ( self shop status = 'Active' ) ifFalse: [ nil ] ifTrue: [ 'checked' ] ) ).
							s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) propertyAt: 'checked' put: 
								( ( self shop status = 'Not Active' ) ifFalse: [ nil ] ifTrue: [ 'checked' ] ) )."
							s << ( ( s jQuery class: 'shop-edit' ) cssAt: 'display' put: 'inline' ).
							s << ( ( s jQuery class: 'shop-delete' ) cssAt: 'display' put: 'inline' ).
							s << ( ( s jQuery class: 'shop-edit-save' ) cssAt: 'display' put: 'none' ).
							s << ( ( s jQuery class: 'shop-edit-cancel' ) cssAt: 'display' put: 'none' ).
							s << ( ( s jQuery class: 'shop-edit-field' ) attributeAt: 'disabled' put: 'disabled' ).
							s << ( ( s jQuery class: 'editmessage', self shop shopId asString ) remove ).
							s << ( ( s jQuery id: 'shop-delete-component', self shop shopId asString ) cssAt: 'display' put: 'none' ).
						]		
   				) asFunction: #(event) )
  		);
		with: [ 
			html div 
				with: [ 
					html italic 
						class: 'large material-icons';
						with: 'info_outline'. 
					].
					html div 
						class: 'col s1';
						style: 'display:inline;font-weight:500;';
						with: 'Channel : '.
					html div 
						class: 'col s1 left-align';
						style: 'display:inline;margin-left:10px;';
						with: self shop channel.
					html div 
						class: 'col s1';
						style: 'display:inline;margin-left:30px;font-weight:500;';
						with: 'Name : '.
					html div 
						id: 'header-shopname', self shop shopId asString;
						class: 'col s2 left-align';
						style: 'display:inline;margin-left:10px;';
						with: self shop shopName.	
					html div 
						class: 'col s1';
						style: 'display:inline;margin-left:30px;font-weight:500;';
						with: 'Status : '.
					html div 
						id: 'header-shopstatus', self shop shopId asString;
						class: 'col s2 left-align';
						style: 'display:inline;margin-left:10px;';
						with: self shop status.									
		].	