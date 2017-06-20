as yet unclassified
renderShopBodyStatusOn: html

	html div 	
		class: 'row';
		style: 'margin-bottom:10px;';
		with: [  
			html div 
				class: 'col s3 right-align';
				style: 'font-weight:400;font-size:20px;';
				with: 'Status : '.
			html div 
				class: 'col s9 left-align';
				style: 'font-weight:300;font-size:20px;';
				with: [  
					html div 
						with: [
							html radioButton
								id: 'shop-status-active', self shop shopId asString;
								class: 'with-gap shop-edit-field';
								attributeAt: 'name' put: 'shop-status',  self shop shopId asString;
								attributeAt: 'checked' put: ( ( self shop status = 'Active' ) ifTrue: [ 'checked' ] );
								onClick: ( html jQuery ajax 
									script: [ :s | self shopStatus: 'Active'.
										s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) removeAttribute: 'checked' ).
										s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) attributeAt: 'checked' put: 'checked' ).
									] 
								).
							html label 
								attributeAt: 'for' put: 'shop-status-active', self shop shopId asString;
								with: 'Active'.
							html radioButton
								id: 'shop-status-inactive', self shop shopId asString;
								class: 'with-gap shop-edit-field';
								attributeAt: 'name' put: 'shop-status',  self shop shopId asString;
								attributeAt: 'checked' put: ( ( self shop status = 'Not Active' ) ifTrue: [ 'checked' ] );
								onClick: ( html jQuery ajax 
									script: [ :s | 
										self shopStatus: 'Not Active'. 
										s << ( ( s jQuery id: 'shop-status-active', self shop shopId asString ) removeAttribute: 'checked' ).
										s << ( ( s jQuery id: 'shop-status-inactive', self shop shopId asString ) attributeAt: 'checked' put: 'checked' ).
									] 
								).
							html label 
								style: 'margin-left:10px;';
								attributeAt: 'for' put: 'shop-status-inactive', self shop shopId asString;
								with: 'Not Active'.
						].
				].
		].