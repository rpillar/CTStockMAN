as yet unclassified
renderContentOn: html

	"Get Categories page ..."	
	html div 
		id: 'get-categories-modal';
		class: 'modal bottom-sheet';
		style: 'z-index:1003;display:none;opacity:0;bottom:-100%;min-height:60%;max-height:65%;border-top:8px solid #000;';
		with: [
			self renderGetCategoriesFormOn: html.
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''.tooltipped'').tooltip()' ) ).