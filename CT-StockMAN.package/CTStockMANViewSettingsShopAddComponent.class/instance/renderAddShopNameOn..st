accessing
renderAddShopNameOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [
					html textInput 
						class: 'validate';
						id: 'icon-prefix';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						on: #shopName of: self.				
					html label 
						attributeAt: 'for' put: 'icon-prefix';
						with: 'Shop Name'.	
				].	
		] 