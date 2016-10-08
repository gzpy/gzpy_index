<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

</head>
<body>
	<jsp:forward page="/index.do" />
</body>
</html>
