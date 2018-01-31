as yet unclassified
renderContentOn: html

	"Add / Edit Categories page ..."	
	self messageComponent messageString: 'Please enter category details - then Save (or Cancel).'; messageType: 'info'.
	self renderAddCategoriesContentOn: html.
	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .