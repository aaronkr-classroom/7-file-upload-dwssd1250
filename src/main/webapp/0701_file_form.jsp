<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form method="POST" enctype="multiport/form-data" action="0702_file_processing.jsp">
		
		<P>이름: <input type="text" name="name"></P>
		<p>제목: <input type="text" name="title"></p>
		<p>파일: <input type="file" name="fileName"></p>
		<p><input type="submit" value="업로드"></p>
	</form>
</body>
</html>