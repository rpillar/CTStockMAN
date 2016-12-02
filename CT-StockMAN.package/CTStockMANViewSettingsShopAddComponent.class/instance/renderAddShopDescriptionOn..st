accessing
renderAddShopDescriptionOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s10';
				with: [
					html textArea 
						class: 'materialize-textarea noteshop-description-entry';
						style: 'padding-top:10px;';
						rows: 3;
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						placeholder: 'Shop Descripton';
						callback: [ :value | self processShopDescriptionInput: value ].		
				].	
		] 