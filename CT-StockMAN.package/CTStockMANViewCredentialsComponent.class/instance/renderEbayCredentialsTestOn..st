rendering
renderEbayCredentialsTestOn: html

	| channel response |
	
	html div
		class: 'col s2';
		with: [ 
			html div 
				style: 'padding-top:30px;padding-left:30px;border-right:1px solid lightgray;height:250px;';
				with: [ 
					html button
						bePush;
						class: 'btn-large waves-effect waves-light hoverable';
						id: 'test-credentials';
						script: ( html jQuery this 
							on: 'click'
							do: (  ( html jQuery ajax
								 html jQuery expression: ( ( JSStream on: '$(''#test-credentials'').attr(''disabled'',''disabled'')' ) );
								callback: [ :val | channel := CTStockMANEBayManage new. response := channel getEBayOfficialTime.  ] value: [ 'Ebay' ];
								onComplete: ( 
									( ( html jQuery expression: '#test-credentials' ) removeAttribute: 'disabled' )
								)
							) asFunction: #(event) )
						);
						with: 'Test'.
				]
		].
	html div 
		class: 'col s9';
		with: [  
			html div 	
				class: 'progress';
				style: 'display:none';
				with: [  
					html div 
						class: 'indeterminate'
				].
			html div 
				id: 'credentials-shop-test';
				style: 'height:250px;'
		].