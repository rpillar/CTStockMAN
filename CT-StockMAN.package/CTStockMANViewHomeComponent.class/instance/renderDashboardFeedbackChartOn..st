rendering
renderDashboardFeedbackChartOn: html

	| chart myData1 stream |

	myData1 := HighchartsSeriesColumn new 
		data: #(4.8 5 5 4.9 4.7 5 5 3.5 5 4.9 4.9 5); name: 'Average Feedback Score'; type: 'column'; color: '#7cb5ec'.		

	chart := html highcharts newChart.
	chart addYAxis title text: 'Sales'.
	chart lang thousandsSep: ','.
	chart title text: ''.
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart tooltip split: true.
	chart credits enabled: false.
	chart exporting enabled: false.
	
	chart plotOptions line marker lineColor: '#666666'; lineWidth: 1.
	
	chart series add: myData1.
	stream := WriteStream on: String new.
	chart javascriptContentOn: stream.
		
	html div
		style: 'height:150px;';
	 	script: chart.