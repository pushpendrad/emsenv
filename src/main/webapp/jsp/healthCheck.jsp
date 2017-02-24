<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="entity" class="com.sample.mvc.model.EmployeeCommand"
	scope="session"></jsp:useBean>
<jsp:setProperty name="entity" property="*" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Application health check</title>
<style type="text/css">
/* Reset body padding and margins */
body {
	margin: 0;
	padding: 0;
}

/* Make Header Sticky */
#header_container {
	background: #8AC007;
	height: 50px;
	left: 0;
	position: fixed;
	width: 100%;
	top: 0;
}

#header {
	line-height: 40px;
	margin: 0 auto;
	width: 940px;
	text-align: center;
	font-weight: bolder;
	font-size: 30px;
	color: white;
}

.smart-green {
	width: 400px;
	margin-top: 200px;
	margin-right: auto;
	margin-left: auto;
	background: #FFF;
	padding: 30px 30px 20px 30px;
	box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
	-webkit-box-shadow: rgba(194, 194, 194, 0.7) 0 3px 10px -1px;
	font: 12px Arial, Helvetica, sans-serif;
	color: #666;
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
}

.smart-green h1 {
	font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
	padding: 20px 0px 20px 40px;
	display: block;
	margin: -30px -30px 10px -30px;
	color: #FFF;
	background: #9DC45F;
	text-shadow: 1px 1px 1px #949494;
	border-radius: 5px 5px 0px 0px;
	-webkit-border-radius: 5px 5px 0px 0px;
	-moz-border-radius: 5px 5px 0px 0px;
	border-bottom: 1px solid #89AF4C;
}

.smart-green h1>span {
	display: block;
	font-size: 11px;
	color: #FFF;
}

.smart-green label {
	display: block;
	margin: 0px 0px 5px;
}

.smart-green label>span {
	float: left;
	margin-top: 10px;
	color: #5E5E5E;
}

.smart-green td, tr {
	color: #555;
	height: 24px;
	width: 96%;
	padding: 3px 3px 3px 10px;
	margin-top: 2px;
	margin-bottom: 16px;
	border: 1px solid #E5E5E5;
	background: #FBFBFB;
	outline: 0;
	-webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
	box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
	font: normal 14px/14px Arial, Helvetica, sans-serif;
}

a:link {
	color: #9DC45F;
} /* unvisited link */
a:hover {
	color: #80A24A;
} /* mouse over link */
</style>

<style type="text/css">


.cssload-wrap{
	padding-top:78px;
}	

.cssload-wrap > div {
	left: calc(50% - 97px);
	position: relative;
	background-color: rgb(255,255,255);
	width: 195px;
	height: 195px;
	border-radius: 100%;
		-o-border-radius: 100%;
		-ms-border-radius: 100%;
		-webkit-border-radius: 100%;
		-moz-border-radius: 100%;
	overflow: hidden;
	color:rgb(0,0,0);
}
.cssload-wrap > div:nth-child(2) {
	width: 175px;
	height: 175px;
	top: -185px;
	left: calc(50% - 88px);
	line-height: 175px;
	text-align: center;
}
.cssload-wrap > div div {
	width: 146px;
	height: 146px;
	border-radius: 100%;
		-o-border-radius: 100%;
		-ms-border-radius: 100%;
		-webkit-border-radius: 100%;
		-moz-border-radius: 100%;
	filter: blur(29px);
		-o-filter: blur(29px);
		-ms-filter: blur(29px);
		-webkit-filter: blur(29px);
		-moz-filter: blur(29px);
	position: absolute;
}
.cssload-wrap > div div:nth-child(1) {
	background-color: red;
	animation: cssload-move 4.6s;
		-o-animation: cssload-move 4.6s;
		-ms-animation: cssload-move 4.6s;
		-webkit-animation: cssload-move 4.6s;
		-moz-animation: cssload-move 4.6s;
	animation-delay: 5.52s;
		-o-animation-delay: 5.52s;
		-ms-animation-delay: 5.52s;
		-webkit-animation-delay: 5.52s;
		-moz-animation-delay: 5.52s;
	animation-iteration-count: infinite;
		-o-animation-iteration-count: infinite;
		-ms-animation-iteration-count: infinite;
		-webkit-animation-iteration-count: infinite;
		-moz-animation-iteration-count: infinite;
	animation-timing-function: linear;
		-o-animation-timing-function: linear;
		-ms-animation-timing-function: linear;
		-webkit-animation-timing-function: linear;
		-moz-animation-timing-function: linear;
}
.cssload-wrap > div div:nth-child(2) {
	background-color: green;
	animation: cssload-move 3.45s;
		-o-animation: cssload-move 3.45s;
		-ms-animation: cssload-move 3.45s;
		-webkit-animation: cssload-move 3.45s;
		-moz-animation: cssload-move 3.45s;
	animation-delay: 0s;
		-o-animation-delay: 0s;
		-ms-animation-delay: 0s;
		-webkit-animation-delay: 0s;
		-moz-animation-delay: 0s;
	animation-iteration-count: infinite;
		-o-animation-iteration-count: infinite;
		-ms-animation-iteration-count: infinite;
		-webkit-animation-iteration-count: infinite;
		-moz-animation-iteration-count: infinite;
	animation-timing-function: linear;
		-o-animation-timing-function: linear;
		-ms-animation-timing-function: linear;
		-webkit-animation-timing-function: linear;
		-moz-animation-timing-function: linear;
}
.cssload-wrap > div div:nth-child(3) {
	background-color: blue;
	animation: cssload-move 6.9s;
		-o-animation: cssload-move 6.9s;
		-ms-animation: cssload-move 6.9s;
		-webkit-animation: cssload-move 6.9s;
		-moz-animation: cssload-move 6.9s;
	animation-delay: 3.68s;
		-o-animation-delay: 3.68s;
		-ms-animation-delay: 3.68s;
		-webkit-animation-delay: 3.68s;
		-moz-animation-delay: 3.68s;
	animation-iteration-count: infinite;
		-o-animation-iteration-count: infinite;
		-ms-animation-iteration-count: infinite;
		-webkit-animation-iteration-count: infinite;
		-moz-animation-iteration-count: infinite;
	animation-timing-function: linear;
		-o-animation-timing-function: linear;
		-ms-animation-timing-function: linear;
		-webkit-animation-timing-function: linear;
		-moz-animation-timing-function: linear;
}
.cssload-wrap > div div:nth-child(4) {
	background-color: yellow;
	animation: cssload-move 5.75s;
		-o-animation: cssload-move 5.75s;
		-ms-animation: cssload-move 5.75s;
		-webkit-animation: cssload-move 5.75s;
		-moz-animation: cssload-move 5.75s;
	animation-delay: 1.84s;
		-o-animation-delay: 1.84s;
		-ms-animation-delay: 1.84s;
		-webkit-animation-delay: 1.84s;
		-moz-animation-delay: 1.84s;
	animation-iteration-count: infinite;
		-o-animation-iteration-count: infinite;
		-ms-animation-iteration-count: infinite;
		-webkit-animation-iteration-count: infinite;
		-moz-animation-iteration-count: infinite;
	animation-timing-function: linear;
		-o-animation-timing-function: linear;
		-ms-animation-timing-function: linear;
		-webkit-animation-timing-function: linear;
		-moz-animation-timing-function: linear;
}




@keyframes cssload-move {
	0%, 100% {
		top: 0%;
		left: 0%;
	}
	25% {
		top: 0%;
		left: 50%;
	}
	50% {
		top: 50%;
		left: 50%;
	}
	75% {
		top: 50%;
		left: 0%;
	}
}

@-o-keyframes cssload-move {
	0%, 100% {
		top: 0%;
		left: 0%;
	}
	25% {
		top: 0%;
		left: 50%;
	}
	50% {
		top: 50%;
		left: 50%;
	}
	75% {
		top: 50%;
		left: 0%;
	}
}

@-ms-keyframes cssload-move {
	0%, 100% {
		top: 0%;
		left: 0%;
	}
	25% {
		top: 0%;
		left: 50%;
	}
	50% {
		top: 50%;
		left: 50%;
	}
	75% {
		top: 50%;
		left: 0%;
	}
}

@-webkit-keyframes cssload-move {
	0%, 100% {
		top: 0%;
		left: 0%;
	}
	25% {
		top: 0%;
		left: 50%;
	}
	50% {
		top: 50%;
		left: 50%;
	}
	75% {
		top: 50%;
		left: 0%;
	}
}

@-moz-keyframes cssload-move {
	0%, 100% {
		top: 0%;
		left: 0%;
	}
	25% {
		top: 0%;
		left: 50%;
	}
	50% {
		top: 50%;
		left: 50%;
	}
	75% {
		top: 50%;
		left: 0%;
	
</style>
</head>
<body>
	<div id="header_container">
		<div id="header">Employee Management System</div>
	</div>
	<div class="smart-green">
		<h1>Employee Mangement system application is working</h1>
		<div class="cssload-wrap">
			<div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div>working</div>
		</div>

	</div>
</body>
</html>
