accessing
renderGetCategoryButtonGetCategoryOn: html

	| response validShopCredentials |
	validShopCredentials := ''.
	
	html button 
		bePush;
		class: 'btn-large waves-effect waves-light hoverable';
		id: 'get-categories-button'; 
		script: ( html jQuery this 
			on: 'click'
			do: (
				( ( html jQuery id: 'get-categories-button' ) addClass: 'disabled' ),
				( ( html jQuery id: 'get-categories-button' ) text: 'Processing' )
			)
		);
		script: ( html jQuery this
			on: 'click'
			do: ( 	( ( html jQuery ajax )
				serializeForm;
				script: [ :s |
					validShopCredentials := ( self checkShopCredentials: self shopName ).
					( validShopCredentials = '' )
						ifTrue: [ 
							"response is a dictionary - status / count / message."
							response := self getChannelCategories. 
							self messageComponent errorMessage: ( response at: #message ).
							s << ( ( s jQuery id: 'get-categories-button' ) removeClass: 'disabled' ).
							s << ( ( s jQuery id: 'add-new-category' ) removeAttribute: 'disabled' ).							
						]
						ifFalse: [
							self messageComponent errorMessage: validShopCredentials.
						].
						s << ( ( s jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ). 
						s << ( ( s jQuery id: 'get-categories-button' ) text: 'GET CATEGORIES' ).
				]
			) asFunction: #(event) )
		);
		with: 'Get Categories'.