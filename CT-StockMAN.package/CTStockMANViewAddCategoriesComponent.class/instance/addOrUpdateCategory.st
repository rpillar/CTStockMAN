accessing
addOrUpdateCategory

	| categoryData customCategory myCategory query |
	
	"add category data details"
	query := CTDBxQuery new.
	myCategory := CTStockMANModelCategoryData new.
	myCategory conn: WACurrentRequestContext value session dbConnection.
	
	"check - does the custom category already exist."
	customCategory := self getCustomCategory.

	categoryData := Dictionary newFrom: { #channel->self channel . #categoryName->self channelCategory  . #customCategoryName->self categoryName }.
				
	( customCategory = '' )
		ifTrue: [
			query queryTable: 'CTStockMANModelCategoryData'; dbCreate: categoryData. 
		]
		ifFalse: [ 
			query queryTable: 'CTStockMANModelCategoryData'; dbUpdate: categoryData.
		].

		myCategory conn execute: ( query queryString ).