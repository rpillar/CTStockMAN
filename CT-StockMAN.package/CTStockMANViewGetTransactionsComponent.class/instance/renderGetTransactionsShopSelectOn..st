rendering
renderGetTransactionsShopSelectOn: html

	html div 
		class: 'row';
		with: [ 
			html div
				class: 'input-field col s5';
				style: 'margin-left:45px;';
				with: [
					html select
						id: 'shopname';
						style: 'margin-left:20px;';
						size: 2;	
						list: self utils utilsGetShopNames;
						selected: ( self utils utilsGetShopNames at: 1);
						callback: [ :value | self shopName: value asString ].		
					html label 
						attributeAt: 'for' put: 'shopname';
						with: 'Shop Name'.			
				].	
		].