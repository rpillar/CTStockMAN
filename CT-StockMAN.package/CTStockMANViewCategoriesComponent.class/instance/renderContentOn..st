as yet unclassified
renderContentOn: html

	"Add / Edit Categories page ..."	
	html div 
		id: 'add-category-modal';
		class: 'modal bottom-sheet';
		style: 'z-index:1003;display:none;opacity:0;bottom:-100%;min-height:70%;max-height:85%;border-top:8px solid #000;';
		with: [
			self renderCategoriesFormOn: html.
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).