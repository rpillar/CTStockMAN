update
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
		"url: 'http://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css'."
		url: 'https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css'.
	anHtmlRoot stylesheet
		url: 'https://fonts.googleapis.com/icon?family=Material+Icons'.	
	anHtmlRoot stylesheet
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css'.
	"nHtmlRoot stylesheet
		url: 'https://code.highcharts.com/7.1.1/css/highcharts.css'."
	anHtmlRoot stylesheet
		url: 'https://fonts.googleapis.com/css?family=Exo+2'.
	anHtmlRoot stylesheet			
		url: 'https://fonts.googleapis.com/css?family=Lobster'.	
	anHtmlRoot stylesheet			
		url: 'https://fonts.googleapis.com/css?family=Kranky'.		
	"anHtmlRoot stylesheet 
		url: (CTToDoFileLibrary urlOf: #styleCss)."						
	anHtmlRoot javascript
		"url: 'http://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js'."
		url: 'https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js'.
	anHtmlRoot javascript
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js'.	
	anHtmlRoot javascript 
		url: '	https://use.fontawesome.com/e42a505129.js'.
"	anHtmlRoot javascript 
		url: 'https://code.highcharts.com/7.1.1/highcharts.js'.
	anHtmlRoot javascript 
		url: 'https://code.highcharts.com/7.1.1/highcharts-more.js'.
	anHtmlRoot javascript
		url: 'https://code.highcharts.com/7.1.1/modules/exporting.js'."