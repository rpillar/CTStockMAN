routing
setRoutes

	self server
		GET: '/transactions' -> [ :req | self getTransactionData: req ]; output: #json;
		yourself.