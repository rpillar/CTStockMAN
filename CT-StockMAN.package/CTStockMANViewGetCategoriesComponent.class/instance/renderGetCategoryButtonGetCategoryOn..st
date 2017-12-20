accessing
renderGetCategoryButtonGetCategoryOn: html

	| response validShopCredentials |
	html button 
		bePush;
		class: 'btn-large waves-effect waves-light hoverable'; 
		onClick: ( ( html jQuery ajax )
			serializeForm;
			script: [ :s | 
				validShopCredentials := self checkShopCredentials: self shopName.
				( validShopCredentials = '' )
					ifTrue: [ 
						response := self getChannelCategories.
						s << ( JSStream on: '$(''#get-categories-modal'').modal(''close'')'  ).
						s << ( ( s jQuery class: 'get-categories-modal-content' ) remove ).  
					]
				   ifFalse: [
						self messageComponent errorMessage: validShopCredentials.
						s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ). 
					]
		] );
		with: 'Get Categories'.