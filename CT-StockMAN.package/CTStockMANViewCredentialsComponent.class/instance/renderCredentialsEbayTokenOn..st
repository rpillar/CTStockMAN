rendering
renderCredentialsEbayTokenOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s10';
				with: [
					html italic
						class: 'material-icons prefix';
						style: 'color:#000;';
						with: 'mode_edit'.
					html textArea 
						class: 'validate edit-credentials-token materialize-textarea';
						id: 'credentials-shop-token';
						style: 'min-height:12rem;';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						callback: [ :value | self formCredentials at: 'token' put: value ];
						value: ( self formCredentials at: 'token' ).				
					html label 
						class: 'active';
						attributeAt: 'for' put: 'credentials-shop-token';
						with: 'Token'.	
				]	
		].