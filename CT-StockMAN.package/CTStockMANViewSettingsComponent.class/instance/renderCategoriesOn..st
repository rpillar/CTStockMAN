as yet unclassified
renderCategoriesOn: html
	
	html div 
		class: 'row';
		with: [  
			html heading level: 2; 
			class: 'heading-main';	 
			style: 'font-weight:300;font-size:3rem';
			with: [ 
				html span 
				style: 'border-bottom: 3px solid lightblue;'; 
				with: 'Product Categories'.
			]
		].