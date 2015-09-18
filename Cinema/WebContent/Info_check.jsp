<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String p = request.getParameter("phone");
    String m = request.getParameter("mail");
    if (p == null || p.equals("")|| m == null || m.equals(""))
    {
    	out.print("0");	// 0 代表沒有重複可以新增
    }
    else
    {
    	out.print("1");	// 1 代表有重複不可以新增
    }

    
    %>
