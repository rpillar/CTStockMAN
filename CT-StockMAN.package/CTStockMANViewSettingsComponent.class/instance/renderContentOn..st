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
	
	"display product categories ..."		
	self renderCategoriesOn: html.	

	"add add-shop modal"		
	html render: self addShopComponent.	

	"credentials modal"
	self renderCredentialsModalOn: html.
	
	"get Categories modal"
	self renderGetCategoriesModalOn: html.	
		
	"add add-category modal"		
	self renderAddCategoryModalOn: html.
				
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible()' ) ).	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).	
	html document addLoadScript: ( ( JSStream on:	'$(''.modal'').modal({outDuration:300,opacity:.4})' ) ).
	html document addLoadScript: ( ( JSStream on: '$(window).scrollTop(0)' ) ).		
