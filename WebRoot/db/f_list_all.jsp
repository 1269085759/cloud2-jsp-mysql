<%@ page language="java" import="Xproer.DBFile" pageEncoding="UTF-8"%><%@
	page contentType="text/html;charset=UTF-8"%><%@ 
	page import="Xproer.XDebug" %><%@
	page import="org.apache.commons.lang.StringUtils" %><%@
	page import="java.net.URLEncoder" %><%
/*
	列出所有文件，文件夹，包括未完成的，已经上传完成的。	
	更新记录：
		2012-05-24 完善
		2012-06-29 增加创建文件逻辑，

	JSON格式化工具：http://tool.oschina.net/codeformat/json
*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String uid = request.getParameter("uid");
String callback = request.getParameter("callback");//jsonp
String json = callback + "([])";


if(! StringUtils.isBlank(uid) )
{
	json = DBFile.GetAll(Integer.parseInt(uid) );
	XDebug.Output("f_list_all.jsp编码前的JSON",json);
	json = URLEncoder.encode(json,"utf-8");
	json = json.replace("+","%20");
	XDebug.Output("f_list_all.jsp编码后的JSON",json);
}
out.write(json);
%>