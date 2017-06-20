accessing
renderShopCredentialsBodyMessageOn: html

	html div 	
		class: 'row credentialsMessage'", self credentials shopId asString";
		style: 'margin-bottom:0px;';
		with: [ 
			html div 
				class: 'col s12';
				style: 'margin-top:10px;margin-bottom:0px;margin-left:40px;';
				with: [ 
					html render: self messageComponent.
				]
		].