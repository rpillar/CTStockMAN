rendering
renderContentOn: html

	html listItem 
		id: 'shop-list-item', ( self shopId ) asString;
		style: 'padding-top:5px;padding-left:5px;padding-right:5px;';
		with: [ 
			self renderShopHeaderOn: html.
			self renderShopBodyOn: html.		
		].