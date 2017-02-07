as yet unclassified
renderShopsOn: html

	| myShop |
	
	"display shop details ..."
	html div 
		class: 'row';
		style: 'margin-bottom:5px;';
		with: [  
			html heading level: 2; 
			class: 'heading-main';	 
			style: 'font-weight:300;font-size:3rem';
			with: [ 
				html span 
				style: 'border-bottom: 3px solid lightblue;'; 
				with: 'Shops'.
			]
		].

	( self shops isEmpty )
		ifTrue: [
			html div 
				class: 'row';
				with: [
					html div
						class: 'no-shop-data'; 
						style: 'margin-left: 20px;font-size:1.5rem;font-weight:300;'; 
						with: 'There are no shops defined at the moment.'
				].		
			html div 
				class: 'row';
				with: [
					html unorderedList
						class: 'collapsible shop-data';
						style: 'display: none;'
				].
		]
		ifFalse: [ 			
			html div 
				class: 'row';
				with: [
					html unorderedList
						class: 'collapsible shop-data'; 
						with: [			
							self shops do: [ :each |
								myShop := CTStockMANViewSettingsShopComponent new.
								myShop shop: each.
								html render: myShop.
							]
						]	
				] 				
		].
	
	html div 
		class: 'row add-shop';
		style: 'margin-top:25px;';
		with: [ 
			html div
				class: 'col s3';
				with: [ 
					html anchor 
						class: 'btn-large waves-effect waves-light'; 
						onClick: ( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery id: 'shop-entry' ) append: [ :r | r render: self addShopComponent ] ).
								s << ( ( s jQuery class: 'add-shop' ) hide ). 
								s << ( ( s jQuery id: 'shop-entry' ) slideDown: 0.4 seconds ).  	
							]
						);								
						with: 'Add New Shop'.			
				]
		].	
		
	html div 
		class: 'row';
		style: 'margin-bottom:5px;';
		with: [
			html div 
				class: 'col s12'; 
				style: 'display:none;'; 
				id: 'shop-entry'
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