as yet unclassified
renderCredentialsOn: html

	| addCredentialsComponent inactiveCount myEbayCredentials myShopifyCredentials |
	
	"process Credential data - needs refactoring."
	
	html div 
		class: 'row';
		with: [  
			html heading level: 2; 
			class: 'heading-main';	 
			style: 'font-weight:300;font-size:3rem';
			with: [ 
				html span 
				style: 'border-bottom: 3px solid lightblue;'; 
				with: 'Credentials'.
			]
		].
	
	html div 
		class: 'row';
		with: [  
			html heading level: 3; 
			class: 'heading-main';	 
			style: 'font-weight:400;font-size:2.5rem';
			with: [ 
				html span 
				style: 'border-bottom: 3px solid lightblue;'; 
				with: 'Amazon'.
			]
		].
	
	html div 
		class: 'row';
		with: [ 
			html div 
			style: 'margin-left: 20px;font-size:1.5rem;font-weight:300;'; 
			with: 'This channel is not supported at the moment.'
		].	
		
	html div 
		class: 'row';
		with: [ 
			html div 
			style: 'width:30%;margin:0 auto;'; 
			with: [
				html horizontalRule  
			]. 
		].	
	
	html div 
		class: 'row';
		with: [  
			html heading level: 3; 
				class: 'heading-main';	 
				style: 'font-weight:400;font-size:2.5rem';
				with: [ 
					html span 
					style: 'border-bottom: 3px solid lightblue;'; 
					with: 'EBay'.
				]
		].

	( self ebayCredentials isEmpty )
		ifTrue: [
			html div 
				class: 'row';
				with: [		
					html div
						class: 'ebay-no-credential-data'; 
						style: 'margin-left: 20px;font-size:1.5rem;font-weight:300;'; 
						with: 'There are no shops defined at the moment.'
				].
			html div 
				class: 'row';
				with: [
					html unorderedList
						class: 'collapsible ebay-credential-data';
						style: 'display: none;'
				].
		]	
		ifFalse: [ 
			html unorderedList
				class: 'collapsible ebay-credential-data'; 
				with: [
					self ebayCredentials do: [ :each |
						myEbayCredentials := CTStockMANViewSettingsCredentialsComponent new.
						myEbayCredentials credentials: each.
						html render: myEbayCredentials.
					]	
				]	
		].	
		
	inactiveCount := self getChannelCredentialsInactive: 'EBay'.
	( self ebayCredentials isEmpty or: inactiveCount > 0  )
		ifTrue: [	
			html div 
				class: 'row add-ebay-credentials';
				style: 'margin-top:25px;';
				with: [ 
					html div
						class: 'col s3';
						with: [ 
							html anchor 
								class: 'btn-large waves-effect waves-light'; 
								onClick: ( ( html jQuery ajax )
									script: [ :s |
										addCredentialsComponent := CTStockMANViewSettingsCredentialsAddComponent new.
										addCredentialsComponent channel: 'EBay'.
										s << ( ( s jQuery id: 'credentials-entry' ) append: [ :r | r render: addCredentialsComponent ] ).
										s << ( ( s jQuery class: 'add-ebay-credentials' ) hide ). 
										s << ( ( s jQuery id: 'credentials-entry' ) slideDown: 0.4 seconds ).  	
									]
								);								
								with: 'Add Credentials'.			
						]
				]
		].	

	html div 
		class: 'row';
		style: 'margin-bottom:5px;';
		with: [
			html div 
				class: 'col s12'; 
				style: 'display:none;'; 
				id: 'credentials-entry'
		].	
					
	html div 
		class: 'row';
		with: [ 
			html div 
			style: 'width:30%;margin:0 auto;'; 
			with: [
				html horizontalRule  
			]. 
		].
	
	html div 
		class: 'row';
		with: [  
			html heading level: 3; 
			class: 'heading-main';	 
			style: 'font-weight:400;font-size:2.5rem';
			with: [ 
				html span 
				style: 'border-bottom: 3px solid lightblue;'; 
				with: 'Shopify'.
			]
		].

	( self shopifyCredentials isEmpty )
		ifTrue: [	
			html div 
				class: 'row';
				with: [			
					html div
						class: 'shopify-no-credential-data'; 
						style: 'margin-left: 20px;font-size:1.5rem;font-weight:300;'; 
						with: 'There are no shops defined at the moment.'
				].
			html div 
				class: 'row';
				with: [
					html unorderedList
						class: 'collapsible shopify-credential-data';
						style: 'display: none;'
				]
		]
		ifFalse: [ 
			html unorderedList
				class: 'collapsible shopify-credential-data';
				with: [ 
					self shopifyCredentials do: [ :each |
						myShopifyCredentials := CTStockMANViewSettingsCredentialsComponent new.
						myShopifyCredentials credentials: each.
						html render: myShopifyCredentials.
					]	
				]
		]. 

	inactiveCount := self getChannelCredentialsInactive: 'Shopify'.
	( self shopifyCredentials isEmpty or: inactiveCount > 0  )
		ifTrue: [	
			html div 
				class: 'row add-shopify-credentials';
				style: 'margin-top:25px;';
				with: [ 
					html div
						class: 'col s3';
						with: [ 
							html anchor 
								class: 'btn-large waves-effect waves-light'; 
								onClick: ( ( html jQuery ajax )
									script: [ :s |
										s << ( ( s jQuery id: 'credentials-entry' ) append: [ :r | r render: self addCredentialsComponent ] ).
										s << ( ( s jQuery class: 'add-shopify-credentials' ) hide ). 
										s << ( ( s jQuery id: 'credentials-entry' ) slideDown: 0.4 seconds ).  	
									]
								);								
								with: 'Add Credentials'.			
						]
				]
		].		
		
	html div 
		class: 'row';
		with: [ 
			html div 
			style: 'width:30%;margin:0 auto;'; 
			with: [
				html horizontalRule  
			]. 
		].