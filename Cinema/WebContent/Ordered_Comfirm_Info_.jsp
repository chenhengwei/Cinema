<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Pimp your tables with CSS3</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Pimp your tables with CSS3" />
<meta name="keywords" content="table, css3, style, beautiful, fancy, css"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
<%!
int f; 
int session_ID;

%>
<%
//客戶資訊傳入陣列
String s1[] = request.getParameterValues("seat");

//客戶資訊
/* out.println("MAil: "+s1[0]);
out.println("phone:"+s1[1]);
out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
out.println("Date: "+s1[3]);
out.println("PP: "+s1[4]);
out.println("Start:"+s1[5]);
out.println("End:  "+s1[6]); */

//訂位資訊傳入陣列
String s2[] = request.getParameterValues("seat_Ordered");

String ttl_seat_order="";
String ttl_order_No_under="";


//產生訂位資訊(ttl_seat_order)
for(int j=0;j<=(s2.length-2);j=j+2){
	
	ttl_seat_order=ttl_seat_order+("R"+s2[j]+"_S"+s2[j+1]+", ");
	ttl_order_No_under=ttl_order_No_under+(s2[j]+"_"+s2[j+1]+", ");
}
	//匯入客戶資訊->產生自動訂單編號
	Ticket t = new Ticket(s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"Y",ttl_seat_order);       
    TicketDAO dao = new TicketDAODBImpl();
    int auto_ticket_no = dao.add_ticket_no(t);
	//回傳 自動訂單號

	

for(int i=0;i<=(s2.length-2);i=i+2){
	
	int f;
    Seats ordered_s = new Seats("A",s2[i],s2[i+1],"Y",auto_ticket_no,"Y");
    SeatDAO Seat_dao = new SeatsDAODBImpl();
    f = Seat_dao.add_Seats(ordered_s );
    //out.print(f);
    this.f=f;
}
%>


<%
if(f!=1){
	out.print("訂單失敗 , 請回上一頁");
	
	
}else{

	out.print("訂單成功");
	out.println("MAil: "+s1[0]);
	out.println("phone:"+s1[1]);
	out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
	out.println("Date: "+s1[3]);
	out.println("人數: "+s1[4]);
	out.println("放映時間:"+s1[5]);
	out.println("訂票總金額:  "+s1[6]);
}

%>
</head>

<body>
<div id="content"> <a class="back" href=""></a> <span class="scroll"></span>
  
  <!--  
  <h1>Pimp Your Tables with CSS3</h1>
  <h2>Table Style 1</h2>
  -->
  <table class="table1">
  <%
 
if(f!=1){%>
    <thead>
      <tr>
        <th></th>
        <th scope="col" abbr="Starter">訂單失敗 , 請回上一頁</th>
      </tr>
    </thead>
 <%}else{ %>  
     <thead>
      <tr>
        <th></th>
        <th scope="col" abbr="Starter">訂單成功</th>
      </tr>
    </thead>
    <tfoot>
      <tr>
        <th scope="row">訂票總金額:</th>
        <td><%out.println(s1[6]); %></td>

      </tr>
    </tfoot>
    <tbody>
    
       <tr>
        <th scope="row">E-Mail</th>
        <td><%out.println(s1[0]);%></td>

      </tr>
      <tr>
        <th scope="row">電話:</th>
        <td><%out.println(s1[1]); %></td>

      </tr>
      <tr>
        <th scope="row">訂購電影:</th>
        <td><%out.println(new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") ); %></td>

      </tr>
      <tr>
        <th scope="row">訂購日期</th>
        <td><%out.println(s1[3]); %></td>
    

      </tr>
      <tr>
        <th scope="row">人數:</th>
        <td><%out.println(s1[4]); %></td>

      </tr>
      <tr>
        <th scope="row">位子:</th>
        <td><%out.println(ttl_seat_order);%></td>

      </tr>
      <tr>
        <th scope="row">放映時間:</th>
        <td><%out.println(s1[5]); %></td>

      </tr>
      <tr>
        <th scope="row">訂票總金額:</th>
        <td><%out.println(s1[6]); %></td>

      </tr>
    </tbody>
    <%} %>
  </table>
  
</body>
</html>