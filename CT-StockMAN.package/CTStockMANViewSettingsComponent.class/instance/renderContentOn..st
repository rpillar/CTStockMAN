as yet unclassified
renderContentOn: html

	"Settings page ..."	
	html div 
		with: [  
			html div 
				class: 'page-title';
				with: 'Settings'.
		].
			
	"display shop details ..."		
	self renderShopsOn: html.	
	
	"display shop credentials ..."		
	self renderCredentialsOn: html.	
		
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible()' ) ) .		
