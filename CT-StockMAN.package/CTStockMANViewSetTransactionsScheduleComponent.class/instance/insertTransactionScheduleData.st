inserting
insertTransactionScheduleData

	| query myScheduleData |
	
	"record the transaction retrieval schedule details"
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelTransactionScheduleData'; dbCreate: { { #channel -> self channel . #shopName -> self shopName . #schedule_time -> self startTime } }.
	
	myScheduleData := CTStockMANModelTransactionScheduleData new.
	myScheduleData conn: WACurrentRequestContext value session dbConnection.
	myScheduleData resultset: ( myScheduleData processSearchQuery: ( query queryString ) ).
	
	^ ''.
