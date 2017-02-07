accessing
renderAddCredentialsShopSelectOn: html

	html div 
		class: 'row';
		with: [ 
			html div
				class: 'input-field col s5';
				style: 'margin-left:45px;';
				with: [
					html select
						id: 'shop-name';
						style: 'margin-left:20px;';
						size: 2;	
						list: self inactiveShopNames;
						selected: ( self inactiveShopNames at: 1);
						callback: [ :value | self shopName: value asString ].		
					html label 
						attributeAt: 'for' put: 'shop-name';
						with: 'Shop Name'.			
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .