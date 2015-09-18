<%@page contentType="text/html" pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
  <!-- title and meta -->
  <meta charset="utf-8">
  <meta content="width=device-width,initial-scale=1.0" name="viewport">
  <meta content="" name="  ">

  <title>訂票資訊</title>

  <!-- css -->
  <link href="images/killler.png" rel="shortcut icon">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome/font-awesome.css" rel="stylesheet">
 <link href="css/Base.css" rel="stylesheet">
  <link href="css/style_S.css" rel="stylesheet">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
			<%!
			int f,session_ID,M_no,T_no; 
			String M_room,Show_date,Show_time,M_Version;
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
			    //Seats ordered_s = new Seats("A",s2[i],s2[i+1],"Y",auto_ticket_no,"Y");
			    	Seats ordered_New = new Seats("A",s2[i],s2[i+1],"Y",auto_ticket_no,"Y");
			    
			    SeatDAO Seat_dao = new SeatsDAODBImpl();
			     f = Seat_dao.update_Seats(ordered_New);
			    //f = Seat_dao.add_Seats(ordered_s );
			    //out.print(f);
			    this.f=f;
			}
			%>
			<%
// 			if(f!=1){
// 				out.print("訂單失敗 , 請回上一頁");
				
				
// 			}else{
			
// 				out.print("訂單成功");
// 				out.println("MAil: "+s1[0]);
// 				out.println("phone:"+s1[1]);
// 				out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
// 				out.println("Date: "+s1[3]);
// 				out.println("人數: "+s1[4]);
// 				out.println("放映時間:"+s1[5]);
// 				out.println("訂票總金額:  "+s1[6]);
// 			}
			
			%>
			<%
				AllJoinDAO dao_All = new AllJoinDAODBImpl();
				
				ArrayList<AllJoin> join_list = dao_All.getAllTickets();
				
				join_list = dao_All.getOrderedTickets(s1[0],s1[1]);
				for (AllJoin ticket : join_list) {
				
					session_ID = ticket.getT_session_ID();
					      M_no = ticket.getM_movie_no();
					    M_room = ticket.getS_room();
					 Show_date = ticket.getShow_date();
					 Show_time = ticket.getShow_time();
					 M_Version = ticket.getVersion();
					      T_no = ticket.getT_ticket_no();
				}
				

				%>

</head>

<body>

<div id="wrapper">
  
  <div class="info-bar">
    <div class="container">
      <a class="icon fa fa-home" data-title="Back To Tutorial" href="index.jsp"></a>
      <a class="icon fa fa-arrow-left" data-title="Pevious Demo - Stylish CSS Buttons" href="http://callmenick.com/tutorial-demos/stylish-css-buttons/"></a>
      <!-- <a class="icon fa fa-arrow-right" data-title="Next Demo" href=""></a> -->
      <a class="icon fa fa-download" data-title="Download Source" href="http://www.callmenick.com/tutorial-demos/input-text-styles/input-text-styles-source.zip"></a>
      <a class="icon fa fa-folder-open" data-title="Tutorial Archives" href="http://www.callmenick.com/category/tutorials/"></a>
    </div>
  </div><!-- /.info-bar -->

  <header>
	<!-- /.branding -->
    <div class="branding">
      <div class="container clearfix">
     
      <h1> </h1>
        <div class="logo">
          <a href=""><img alt="" onerror="" src=""></a>
        </div>

        <div class="social">
          <a class="fb" href="https://www.facebook.com/callmenick1" target="_blank">facebook</a>
          <a class="twitter" href="https://twitter.com/nicksalloum_" target="_blank">twitter</a>
          <a class="googleplus" href="https://plus.google.com/115555859876227750152/" target="_blank">google plus</a>
          <a class="rss" href="http://feeds.feedburner.com/callmenick_" target="_blank">rss</a>
          <a class="email" href="http://www.callmenick.com/subscribe/">email</a>
        </div>
      </div>
    </div>
    <!-- /.branding -->

    <div class="site-title">
      <div class="container">
        <h1> 訂票資訊 </h1>
      </div>
    </div><!-- /.site-title -->

  </header>

  <div id="main">
    <div class="container">
      
      <section>
        <h1>訂票資訊</h1>
       
		 </section>

				<%if(f!=1){%>
				<table id='sort' class='sort'>
				    <thead>
				      <tr>
				        <th scope="col" abbr="Starter" class="text-danger" ><h1>訂單失敗 , 請重新訂票</h1></th>
				      </tr>
				    </thead>
				    </table>
				    <p> <a href="Select_seat.jsp"><input type="button" name="submit" value="上一頁" class="btn btn-danger" /></a> </p>
				    
				 <%}else{ %>  
				 <table id='sort' class='sort'>
				     <thead>
				      <tr>
				        <th></th>
				       <th scope="col" abbr="Starter" class="text-danger"><h4>訂票成功</h4></th>
				      </tr>
				    </thead>
				    <tfoot>
				      <tr>
				        <th scope="row">訂票總金額:</th>
				        <td class="text-success"><h4><%out.println(s1[6]); %></h4></td>
				
				      </tr>
				    </tfoot>
				    <tbody>
				     <tr>
				        <th scope="row" >訂單編號</th>
				        <td class="text-danger" ><%out.println(T_no);%></td>
				
				      </tr>
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
						<tr>
				        <th scope="row">版本:</th>
				        <td><%out.print(M_Version); %></td>
				
				      </tr>
				      </tr>
				       <tr>
				        <th scope="row">場次:</th>
				        <td><%out.print(session_ID); %></td>
				
				      </tr>
				      <tr>
				        <th scope="row">編號:</th>
				        <td><%out.print(M_no); %></td>
				
				      </tr>
				      <tr>
				        <th scope="row">廳別:</th>
				        <td><%out.print(M_room); %></td>
				
				      </tr>
				      <tr>
				        <th scope="row">播映時間:</th>
				        <td><%out.print(Show_date); %></td>
				
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
				        <td><%out.println(Show_time);//out.println(s1[5]);%></td>
				
				      </tr>
				    </tbody>
				    </table>
				    <%} %>
				    <p> <a href="index.jsp"><input type="button" name="submit" value="回首頁" class="btn btn-danger" /></a> </p>

					</div>
            </div>

    </div>
    
 
  <!-- #main -->

  <footer>
    <div class="container">
      <div class="clearfix">
        <aside>
        <span class="clearfix">電影</span>
          <ul>
                        <li><a href="http://www.ezding.com.tw/welcome.do">最新預告</a></li>
                        <li><a href="#">評價評論</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">即將上映電影</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">訂票Top10</a></li>
          </ul>
        </aside>

        <aside>
        <span class="clearfix">各區影城訂票</span>
          <ul>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=aa328194963a11e092b89646992d17ea">in89豪華</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=46efa950eafa11e38b12000bdb90dba4">樂聲</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=79dd632cce7511e2ad6600215edc3df8">新民生</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f554e7e0674">威秀</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f55676b1bbc">美麗華大直</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f5566201ba4">華威</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=2c28121ae2c711e292f7000bdb90dba4">屏東中影</a></li>
                   
          </ul>
        </aside>
        <aside class="logo">
          <a href=""><img alt="" onerror="" src=""></a>
        </aside>

      
        
        
      </div>
     
    </div>
  </footer><!-- /footer -->
  
</div><!-- /#wrapper -->



</body>
</html>