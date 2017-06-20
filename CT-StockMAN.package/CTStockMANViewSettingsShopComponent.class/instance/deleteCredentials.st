accessing
deleteCredentials

	"delete from the db - pass in the shops object - keys are the same"
	self session dbResource delete: 'credentials' with: self shop.