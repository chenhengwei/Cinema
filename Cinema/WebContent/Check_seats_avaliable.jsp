<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*"%>

<%!
String msg=""; 
String num="";
String seat_check;
String s_available;
%>
<%
	msg="";
	String R = request.getParameter("R");
	String S = request.getParameter("S");

 
	//Seat_splits_R = ttl_R.split(",");
	//Seat_splits_S = ttl_S.split(",");
	
//for(int i=0; i< Seat_splits_R.length; i++){  

	if(R != null && S!= null ){
    SeatDAO saet_dao = new SeatsDAODBImpl();
    //String R = "2";
    //String S = "1";
    
    s_available = saet_dao.find_Seat_by_RS(R,S);
    //out.println(s_available);
    
    num = "R"+R+"_"+"S"+S;
    out.print(s_available);
    /*
 	if( s_available.equals("Y")){
		
 		  msg+= num +"已被訂位,請重新選位子";
		  
 		  out.print(msg);
 		 
 		} else {
 			msg+= num + "位子OK\n";
 			out.print(msg);
 			
 		}
 	  */
	}


	//}  


	// alert(ttl_R);
	// alert(ttl_S);

	// var Seat_splits_R = ttl_R.split(",");
	// var Seat_splits_S = ttl_S.split(",");
	// alert(Seat_splits_R[0]+","+Seat_splits_R[1]+","+Seat_splits_R[2]+","+Seat_splits_R[3]);
	// alert(Seat_splits_S[0]+","+Seat_splits_S[1]+","+Seat_splits_S[2]+","+Seat_splits_S[3]);

	// for(int i=0; i<= (obj.length-2); i=i+2){  
	//     //str += 'id: '+ obj[i].id + ', innerHTML: ' + obj[i].innerHTML + "\n"; 
	//     ttl_seat_order = ("R"+obj[i].value+"_S"+obj[i+1].value+" ");
	//     //ttl_order_nudln +=(obj[i].value+"_"+obj[i+1].value+", ");
	//     SeatDAO saet_dao = new SeatsDAODBImpl();
	//     String R = obj[i].value;
	//     String S = obj[i+1].value;
	//     String seat_check = saet_dao.find_Seat_by_RS(R, S);
	// 	if(seat_check == Y){
	// 		seat_ordered_msg+= ttl_seat_order +"已被訂位,請重新選位子 /n";

	// 	}else{
	// 		seat_ordered_msg+=ttl_seat_order +"位子OK /n";
	// 	}

	// }
%>
