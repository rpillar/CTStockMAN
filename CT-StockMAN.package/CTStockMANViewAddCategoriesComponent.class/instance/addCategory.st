accessing
addCategory

	| myCategory query |
	
	"add category details"
	query := CTDBxQuery new.
	query queryTable: 'CTStockMANModelCategory'; dbCreate: ( Dictionary newFrom: { #channel->self channel . #channelCategory->self channelCategory  . #categoryName->self categoryName } ).

	myCategory := CTStockMANModelCategory new.
	myCategory conn: WACurrentRequestContext value session dbConnection.
	myCategory conn execute: ( query queryString ).
	
	^ myCategory.