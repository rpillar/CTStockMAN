rendering
renderDashboardSummaryChartOn: html

	| chart config layout t1 t2 |

	t1 := PlotlyTrace new.
	t2 := PlotlyTrace new.
	
	t1 mode: 'lines+markers'.
	t1 line color: 'rgb(0, 128, 255)'; size: 10.
	t1 x: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	t1 y: #(8722 10013 11211 5231 8723 5456 8701 10692 10993 8022 6998 7691).
	t1 name: 'Volume'.
	t1 yaxis: 'y2'.
	t1 marker size: 12.
	
	t2 type: 'bar'.
	t2 x: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	t2 y: #(5411 7175 9790 7531 4399 3546 4064 8519 8005 8850 8000 7409).
	t2 name: 'Sales'.
	t2 marker color: 'rgb(102, 178, 255)'.
	
	
	layout := PlotlyLayout new.
	layout title: 'Sales / Volume'.
	layout xaxis title: 'Months'.
	layout yaxis title: 'Sales'.
	layout yaxis2 title: 'Volume'; overlaying: 'y'; side: 'right'.
	
	config := PlotlyConfig new.
	config displayModeBar: false.
	
	chart := PlotlyPlot new.
	chart newplot.
	chart complete: 'mySalesChart' data: { t1 . t2 } layout: layout config: config.

	html div
		id: 'mySalesChart';
		style: 'height:400px;';
	 	script: chart.