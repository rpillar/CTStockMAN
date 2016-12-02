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
				with: [ 
					html paragraph 
						with: 'No details can be found.'
				].
		].
	 	
