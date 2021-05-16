updating
updateTransactionScheduleData

	| query myScheduleData myShopName |
	
	"record the transaction retrieval schedule details - DO I NEED THIS method"
	myShopName := ( self parseShopName: self shopName ).
	
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionScheduleData'; dbCreate: ( Dictionary newFrom: { #channel -> self channel . #shopName -> myShopName . #scheduleTime -> self startTime } ).
	
	myScheduleData := CTStockMANModelTransactionScheduleData new.
	myScheduleData conn: WACurrentRequestContext value session dbConnection.
	myScheduleData resultset: ( myScheduleData processSearchQuery: ( query queryString ) ).
	
	^ ''.
