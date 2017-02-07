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
	
	"display product categories ..."		
	self renderCategoriesOn: html.	
		
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible()' ) ).	
	html document addLoadScript: ( ( JSStream on: '$(window).scrollTop(0)' ) ).		
