as yet unclassified
renderDashboardSummaryChartOn: html

	| chart myData1 myData2 stream |

	myData1 := HighchartsSeriesArea new 
		data: #(8722 10013 11211 5231 8723 5456 8701 10692 10993 8022 6998 7691); name: 'EBay Sales'.			
	myData2 := HighchartsSeriesArea new
		data: #(5411 7175 9790 7531 4399 3546 4064 8519 8005 8850 8000 7409); name: 'Shopify'.				

	chart := Highchart new.
	chart lang thousandsSep: ','.
	chart chart type: 'area'.
	chart title text: ''.
	chart yAxis max: 22000.
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart tooltip split: true.
	chart credits enabled: false.
	
	chart plotOptions area stacking: 'normal'; lineColor: '#666666'; lineWidth: 1.
	chart plotOptions area marker lineColor: '#666666'; lineWidth: 1.
	
	chart series add: myData1; add: myData2.
	stream := WriteStream on: String new.
	chart javascriptContentOn: stream.
		
	html div
		style: 'height:370px;';
	 	script: chart.