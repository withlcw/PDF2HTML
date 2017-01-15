<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="resources/bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/home.css" />
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<script type="text/javascript" src="resources/js/home.js"></script>
</head>
<body>
	<div style="text-align: center;">
		<h1 id="title1" class="h1">PDF 2 HTML</h1>
	</div>

	<form id="fileForm" action="/fileupload" method="post"
		enctype="multipart/form-data">
		<div class="butttonspace">
			<input type="text" id="fileName" class="file_input_textbox"
				readonly="readonly">
			<div class="file_input_div">
				<input type="button" value="Search files" class="file_input_button"
					style="cursor: pointer" /> <input type="file"
					onchange="javascript:document.getElementById('fileName').value = this.value"
					name="file" multiple="multiple" accept=".pdf" />
			</div>
		</div>
		<div class="span7" align="center">
			<input name="submitBtn" type="button" class="mainButton"
				value="Upload" style="cursor: pointer" onclick="fileSend(this.form)">
		</div>
	</form>
	<!-- modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" align="center">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel" style="font: bold;">잠시만
						기다려 주세요.</h4>
				</div>
				<div class="modal-body">
					<img src="resources/image/loading.gif" width="250px" height="250px">
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>
</html>
