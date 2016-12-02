as yet unclassified
renderCredentialsOn: html

	| myEbayCredentials |
	
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

		html div 
		class: 'row';
		with: [
			html unorderedList
			class: 'collapsible popout ebay-credential-data'; 
			with: [			
				self ebayCredentials isEmpty
					ifTrue: [
						html div
							class: 'ebay-no-credential-data'; 
							style: 'margin-left: 20px;font-size:1.5rem;font-weight:300;'; 
							with: 'There are no shops defined at the moment.'
					]
					ifFalse: [ 
						self ebayCredentials do: [ :each |
							myEbayCredentials := CTStockMANViewSettingsCredentialsComponent new.
							myEbayCredentials credentials: each.
							html render: myEbayCredentials.
						]
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