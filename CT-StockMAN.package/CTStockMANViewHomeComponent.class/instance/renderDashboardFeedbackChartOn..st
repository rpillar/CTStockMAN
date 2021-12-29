rendering
renderDashboardFeedbackChartOn: html

	| chart config layout t1 |
	
	t1 := PlotlyTrace new.
	
	t1 type: 'bar'.
	t1 x: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	t1 y: #(4.8 5 5 4.9 4.7 5 5 3.5 5 4.9 4.9 5).
	t1 marker color: 'rgb(51,153, 255)'.
	
	layout := PlotlyLayout new.
	layout margin t: 25; b: 25.
	
	config := PlotlyConfig new.
	config displayModeBar: false.
	
	chart := PlotlyPlot new.
	chart newplot.
	chart complete: 'myFeedbackChart' data: { t1 } layout: layout config: config.		
		
	html div
		id: 'myFeedbackChart';
		style: 'height:150px;';
	 	script: chart.