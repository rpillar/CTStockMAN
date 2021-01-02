as yet unclassified
register

	| app |

	app := WAAdmin register: self asApplicationAt: 'CTStockMAN'.
	app
		addLibrary: JQDevelopmentLibrary;
		addLibrary: PlotlyOnlineLibrary