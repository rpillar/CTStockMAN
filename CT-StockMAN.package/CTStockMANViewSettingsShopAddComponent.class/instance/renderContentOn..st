accessing
renderContentOn: html
	
	"Add Shop page ..."		
	self renderAddShopFormOn: html.
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .
	