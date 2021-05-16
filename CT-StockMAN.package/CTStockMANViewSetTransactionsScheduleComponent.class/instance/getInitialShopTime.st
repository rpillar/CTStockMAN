accessing
getInitialShopTime

	| myScheduleData query |
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionScheduleData'; dbSearch: { { #channel -> 'EBay' . #shopName -> 'aShopName' } . { #limit -> 1 } }.
	
	myScheduleData := CTStockMANModelTransactionScheduleData new.
	myScheduleData conn: WACurrentRequestContext value session dbConnection.
	myScheduleData resultset: ( myScheduleData processSearchQuery: ( query queryString ) ).
	
	^ myScheduleData scheduleTime.