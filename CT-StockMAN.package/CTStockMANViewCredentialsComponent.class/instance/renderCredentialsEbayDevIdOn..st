rendering
renderCredentialsEbayDevIdOn: html

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
						class: 'validate edit-credentials-devid';
						id: 'credentials-shop-devid';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						attributeAt: 'length' put: 65;
						callback: [ :value | self formCredentials at: 'devId' put: value ];
						value: ( self formCredentials at: 'devId' ).				
					html label 
						class: 'active';
						attributeAt: 'for' put: 'credentials-shop-devid';
						with: 'DevId'.	
				]	
		].