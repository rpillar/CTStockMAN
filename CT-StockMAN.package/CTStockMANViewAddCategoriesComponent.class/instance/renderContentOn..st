as yet unclassified
renderContentOn: html

	"Add / Edit Categories page ..."	
	self renderCategoriesFormOn: html.
	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .