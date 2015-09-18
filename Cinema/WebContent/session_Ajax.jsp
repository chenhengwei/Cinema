<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<%//out.print("amy chung");
//request.setCharacterEncoding("utf-8");
String show_date = new String(request.getParameter("show_date").getBytes( "ISO-8859-1"),"utf-8");
int movie_no = Integer.valueOf(request.getParameter("movie_no"));
//out.print(movie_no + "\n");
//out.print(show_date);
AllJoinDAO dao = new AllJoinDAODBImpl();
ArrayList<Session> sList = new ArrayList<Session>();
sList = dao.getSession(movie_no, show_date);
//sList = dao.getSession(1, show_date);
//out.print(sList.size());
for(Session slist: sList){
	out.print(slist.getSession_ID() + " "+
			slist.getShow_time()+",");
}
%>