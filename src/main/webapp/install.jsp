<%@page import="zaietsv.complextask.mvc.install.SchemaInstaller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type;" content="text/html; charset=UTF-8;">
<title>Install A Music Users Database</title>
</head>
<body>
Schema: '<%=SchemaInstaller.dbName%>'<br>
<%if (SchemaInstaller.connect()){%>
<textarea rows="8" cols="120" readonly="readonly" title="databaseInfo"><%=SchemaInstaller.databaseInfo()%></textarea>
<br>Schema: '<%=SchemaInstaller.dbName%>'
<form action="InstallServlet" method="get">
<input type="submit" name="action" value="<%if (SchemaInstaller.isInstalled()) {%>uninstall<%} else {%>install<%}%>">
</form>
<%} else {%>Unable to connect to database<%}%>
</body>
</html>