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

	html div 
		id: 'edit-credential-modal';
		class: 'modal bottom-sheet';
		style: 'z-index:1003;display:none;opacity:0;bottom:-100%;min-height:90%;max-height:90%;border-top:8px solid #000;opacity:0.7;'.
				
	html document addLoadScript: ( ( JSStream on: '$(''.collapsible'').collapsible()' ) ).	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).	
	html document addLoadScript: ( ( JSStream on:	'$(''.modal'').modal({outDuration:300,opacity:.4})' ) ).
	html document addLoadScript: ( ( JSStream on: '$(window).scrollTop(0)' ) ).		
