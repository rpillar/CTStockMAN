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
								with: self credentials channel.
							html div 
								style: 'display:inline;margin-left:30px;font-weight:500;';
								with: 'Name : '.
							html div 
								style: 'display:inline;margin-left:10px;';
								with: self credentials shopName.									
				].
			( self credentials credentials isNil )
				ifTrue: [
					html div 
						class: 'collapsible-body';
						with: [ 
							html paragraph 
								with: 'No credentials can be found for this shop.'
						]
				]
				ifFalse: [  
					html div 
						class: 'collapsible-body';
						style: 'display:block;';
						with: [ 
							html div 
								class: 'full-credential-data';
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
												with: self credentials shopName.		
										].
								]
						]				
				].
		].