accessing
addCredentials

	| myCredentials myData |

	"add a skeleton set of credentials for the 'inserted' shop"
	myData := Array new: 2.
	myData at: 1 put: self channel.
	myData at: 2 put: self shopName.	
	myData := self session dbResource insert: 'credentials' fields: #(channel shopName) with: myData.	

	"return a credentials model"
	myCredentials := CTStockMANModelCredentials new.
	myCredentials channel: self channel.
	myCredentials shopName: self shopName.
	myCredentials credentials: ''.
		
	^ myCredentials.
	
