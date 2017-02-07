accessing
renderAddCredentialsButtonsOn: html

	| myCredentials validCredentialsInput | 
	
	html div 
		with: [ 
			html div
				class: 'col s6';
				style: 'margin-bottom: 20px;';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | 
								validCredentialsInput := self validateUpdateCredentials.
								( validCredentialsInput = '' )
									ifTrue: [ 
										"update credentials data"
										myCredentials := self updateCredentials.
									]
									ifFalse: [  
										self messageComponent infoMessage: validCredentialsInput. 
										s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ). 
								]	
							]
							);
						with: 'Save'.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						style: 'margin-left: 12px;background-color:#ef9a9a';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								"self shopName: ''. self shopDescription: ''. self channel: nil."
								s << ( ( s jQuery id: 'credentials-entry' ) slideUp: 0.2 seconds ). 
								s << ( ( s jQuery class: 'add-credentials' ) show: 0.2 seconds ). 
								s << ( ( s jQuery class: 'credentials-entry-block ' ) remove ). 
							]
						);
						with: 'Cancel'.				
				]	
			].	