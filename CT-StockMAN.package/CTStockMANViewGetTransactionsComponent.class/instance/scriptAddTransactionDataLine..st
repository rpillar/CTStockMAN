accessing
scriptAddTransactionDataLine: script
	
	script << ( ( script jQuery class: 'messageComponent' ) load html: [ :r | r render: self messageComponent ] ).
	script << ( ( script jQuery id: 'get-transactions-now-button' ) text: 'GET TRANSACTIONS' ).
	script << ( ( script jQuery id: 'get-transactions-now-button' ) removeClass: 'disabled' ).