rendering
renderCredentialsChannelOn: html

	html div 
		class: 'input-field col s4';
		with: [
			html italic
				class: 'material-icons prefix';
				style: 'color:#000;';
				with: 'class'.
			html textInput 
				class: 'validate edit-credentials-channel';
				id: 'credentials-shop-channel';
				attributeAt: 'disabled' put: 'disabled';
				"on: #channel of: self shop;"
				callback: [ :value | self shop at: 'channel' put: value ];
				value: ( self shop at: #channel ).	
			html label 
				class: 'active';
				attributeAt: 'for' put: 'credentials-shop-channel';
				with: 'Channel'.	
		].	