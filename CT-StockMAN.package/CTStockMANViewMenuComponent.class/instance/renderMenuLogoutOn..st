as yet unclassified
renderMenuLogoutOn: html

	html anchor 
		class: 'logout tooltipped';
		style: 'text-decoration: none;cursor:pointer;margin-top:70px;';
		attributeAt: 'data-position' put: 'right';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Logout';
		callback: [ self session doLogout. ];
		with: [
			html italic 
				class: 'material-icons';
				style: 'font-size:4rem;color:#004d40;';
				with: 'settings_power'  
		].  