accessing
getCredentials

	"get the credentials for myShop / create the appropriate request headers / store token and url (used by the *Manage 	classes. Note - need to set 'shop' to an appropriate value first."

	"self appId: 'RichardP-StockMAN-SBX-dae5767b0-2ec56edf'.
	self devId: '55375259-e978-4c4e-bbc8-3037a16079c0'.
	self certId: 'SBX-ae5767b0ea27-d768-4d98-8928-098f'."
		
	"set the standard request headers"
	"request headerAt: 'X-EBAY-API-COMPATIBILITY-LEVEL' add: '889';
		headerAt: 'X-EBAY-API-DEV-NAME' add: myEbay devId;
		headerAt: 'X-EBAY-API-APP-NAME' add: myEbay appId;
		headerAt: 'X-EBAY-API-CERT-NAME' add: myEbay certId;
		headerAt: 'X-EBAY-API-SITEID' add: '3';
		headerAt: 'X-EBAY-API-DETAIL-LEVEL' add: '0';
		headerAt: 'Content-Type' add: 'text/xml'."
		
	"self token: 'AgAAAA**AQAAAA**aAAAAA**daWPVw**nY+sHZ2PrBmdj6wVnY+sEZ2PrA2dj6wFk4GjCJKLpwydj6x9nY+seQ**7d4DAA**AAMAAA**hqIV6FSY+OKvCnmtSNFuSCidUoJqcRSoNmbk1d3hIuZ9HJ1eO3i+GelyPkZQFi5gFFnuY5ZiLfMGws7V9RzAAUCc3f+8ov82kY8/54NMxCQNbLAQK7VqBI4IuuBJ8x0Pw7eDPGnP/X997cYXlh+LS3EOk9j7o9wYiauFOznOaZKYTM/QWPmDF1D6z3RmHhoY3Z8bCddrD9tQP85TDNVoviX7crL6/kY3Kpw94zrP5r11E3vIIENqmUokYeOKcLIUOJzzHeIxke1gr4AZXFgiQvJHOVdsWr9VDMkB9QFtf9AOysUls0Z5/639Z//rG2q/4IJCmAsoEznV/p5c5C4na3A57t3TICTUAHuju/1yL0VPWq9Y8pROf4Y7tA7J36/xLhTSLGid2KswxJpZs/hgv9j2idJo7H/PdM1xX4IrCJTUgUZqp1Nc3f+1ylfLVSoiEsnCqqqEk64Fle9FBCNZ7Rr9lKF10hT9BwfRPiEDPfvSkP2P1RbjrwHKnWp8RESX5dCgnSV+VgY9XTraZVRFL30aQo0/KrxZ+2qcx4WLjxaYirslVZXLhC/QPNufZLn4+4EuoV8RSyPzpk+jBVNbiZXvJ1BQNleN54QNmQ2ZilAjEELrZilOXWXbkgzJlzbfwZCyH7ZNHNHyiVkXPEaMAjjSTYYoXL6iezrOUorMYj2EHpnV5Ik1dDlOiIhPlOk9tqb+rRJvv4b7kwa26F3EJDAhq3d0IFVHc5NgiMuMfRrdNR5aP/ubM1UCn8ZIqGMg'.
	self url: 'https://api.sandbox.ebay.com/ws/api.dll'."	
	