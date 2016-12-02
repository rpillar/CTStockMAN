accessing
style 
	^ '
body {
	padding: 0;
 	margin: 0;
}
.side-nav {
	z-index: 10;
	width: 90px;
	/*border-right: 1px solid lightgray;*/
	background-color:#e0f2f1;
	height: 100%;
	padding: 0;
	position: fixed;
	top:0;
	left:0;
}
.menu-title {  
	/*margin-top:20px;*/
	width:115px;
	height:80px;
	margin-top:0;
	margin-bottom:20px;
	font-size:52px;
	font-weight:300;color:gray;
	-moz-transform:rotate(-90deg);
	-webkit-transform:rotate(-90deg);
}
.page-title {  
	/*margin-top:20px;*/
	position: fixed;
	top: 90px;
	right:0px;
	width:85px;
	height:65px;
	font-size:72px;
	font-weight:300;
	opacity:0.8;
	-moz-transform:rotate(90deg);
	-webkit-transform:rotate(90deg);
}
.logout:hover .material-icons {  
	color: #004d40;
}
'	