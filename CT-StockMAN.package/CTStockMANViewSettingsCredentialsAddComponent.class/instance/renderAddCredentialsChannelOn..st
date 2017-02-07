accessing
renderAddCredentialsChannelOn: html

	"not used currently - we should know which channel we are using."
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [
					html italic
						class: 'material-icons prefix';
						style: 'color:#000;';
						with: 'store'.
					html textInput 
						class: 'validate';
						id: 'icon-prefix';
						autofocus;
						attributeAt: 'disabled' put: 'disabled';
						value: self channel.
				].	
		].