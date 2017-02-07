as yet unclassified
renderContentOn: html

	html listItem 
		style: 'padding-top:5px;padding-left:5px;padding-right:5px;';
		with: [ 
			html div 
				class: 'collapsible-header';
				with: [ 
					html div 
						with: [ 
							html italic 
								class: 'large material-icons';
								with: 'info_outline'. 
							].
							html div 
								style: 'display:inline;font-weight:500;';
								with: 'Channel : '.
							html div 
								style: 'display:inline;margin-left:10px;';
								with: self shop channel.
							html div 
								style: 'display:inline;margin-left:30px;font-weight:500;';
								with: 'Name : '.
							html div 
								style: 'display:inline;margin-left:10px;';
								with: self shop shopName.	
							html div 
								style: 'display:inline;margin-left:30px;font-weight:500;';
								with: 'Status : '.
							html div 
								style: 'display:inline;margin-left:10px;';
								with: self shop status.									
				].
			html div 
				class: 'collapsible-body';
				style: 'display:block;';
				with: [ 
					html div 
						class: 'full-shop-data';
						with: [
							html div 	
								class: 'row';
								style: 'margin-top:20px;';
								with: [  
									html div 
										class: 'col s2 right-align';
										style: 'font-weight:400;font-size:20px;';
										with: 'Shop Name : '.
									html div 
										class: 'col s9 left-align';
										style: 'font-weight:300;font-size:20px;';
										with: self shop shopName.		
								].
							html div 	
								class: 'row';
								style: 'margin-top:20px;';
								with: [  
									html div 
										class: 'col s2 right-align';
										style: 'font-weight:400;font-size:20px;';
										with: 'Shop Description : '.
									html div 
										class: 'col s9 left-align';
										style: 'font-weight:300;font-size:20px;';
										with: self shop shopDescription.	
								].
							html div 	
								class: 'row';
								style: 'margin-top:20px;';
								with: [  
									html div 
										class: 'col s2 right-align';
										style: 'font-weight:400;font-size:20px;';
										with: 'Status : '.
									html div 
										class: 'col s9 left-align';
										style: 'font-weight:300;font-size:20px;';
										with: self shop status.	
								]
						].
				].
		].
	 	
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible()' ) ) .