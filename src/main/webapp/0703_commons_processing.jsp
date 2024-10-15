<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% page import="org.apache.commons.fileupload2.*" %>
    <% page import="java.io.*" %>
    <% page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String path="C:\\upload";

	//DiskFileUpload 클래스는 더 이상 사용되지 않음 (대신 FileUpload 사용)
	FileUpload upload=new FileUpload();
	upload.setSizeMax(1000000);
	upload.setSizeThreshold(4096);
	upload.setRepositoryPath(path);
	
	List items = upload.parseRequest(request);
	Iterator params items.iterator();
	
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		
		if(item.isForField()){
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + "=" + value + "<br>");
		}
		else{
			String fileFieldName = item.getFieldName();
			String filename = item.getName();
			String contentType = item.getContentType();
			
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize = item.getSize();
			
			
			File file = new File(path + "/" + fileName);
			item.write(file);
			
			out.println("-------------------------------------<br>");
			out.println("요청된 파라미터 이름: " + fileFieldName + "<br>");
			out.println("저장 파일 이름" + original + "<br>");
			out.println("파일 컨텐츠 유형" + filename + "<br>");
			out.println("파일 크기" + contentType + "<br>");
		}
	}
%>
</body>
</html>