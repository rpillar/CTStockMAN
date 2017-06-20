rendering
renderCredentialsEbayUrlOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [
					html italic
						class: 'material-icons prefix';
						style: 'color:#000;';
						with: 'mode_edit'.
					html textInput 
						class: 'validate edit-credentials-url';
						id: 'credentials-shop-url';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						attributeAt: 'length' put: 65;
						callback: [ :value | self formCredentials at: 'url' put: value ];
						value: ( self formCredentials at: 'url' ).				
					html label 
						class: 'active';
						attributeAt: 'for' put: 'credentials-shop-url';
						with: 'URL'.	
				]	
		].