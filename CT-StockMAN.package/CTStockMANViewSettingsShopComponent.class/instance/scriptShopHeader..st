accessing
scriptShopHeader: script

	script << ( ( script jQuery class: 'shop-name', ( self shopId ) asString ) value: ( self shopName ) ).
	script << ( ( script jQuery class: 'shop-description', ( self shopId ) asString ) value: ( self shopDescription ) ).
	( ( self shopStatus ) = 'Active' ) 
		ifTrue: [ 
			script << ( ( script jQuery id: 'shop-status-active', ( self shopId ) asString ) propertyAt: 'checked' put:'checked' ).
		]
		ifFalse: [  
			script << ( ( script jQuery id: 'shop-status-inactive', ( self shopId ) asString ) propertyAt: 'checked' put:'checked' ).
		].
		script << ( ( script jQuery class: 'shop-edit' ) cssAt: 'display' put: 'inline' ).
		script << ( ( script jQuery class: 'shop-delete' ) cssAt: 'display' put: 'inline' ).
		script << ( ( script jQuery class: 'shop-edit-save' ) cssAt: 'display' put: 'none' ).
		script << ( ( script jQuery class: 'shop-edit-cancel' ) cssAt: 'display' put: 'none' ).
		script << ( ( script jQuery class: 'shop-edit-field' ) attributeAt: 'disabled' put: 'disabled' ).
		script << ( ( script jQuery class: 'editmessage', ( self shopId ) asString ) remove ).
		script << ( ( script jQuery id: 'shop-delete-component', ( self shopId ) asString ) cssAt: 'display' put: 'none' ).