<%@page contentType="text/html" pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
  <!-- title and meta -->
  <meta charset="utf-8">
  <meta content="width=device-width,initial-scale=1.0" name="viewport">
  <meta content="" name="查詢">

  <title>查詢</title>

  <!-- css -->
  <link href="images/killler.png" rel="shortcut icon">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome/font-awesome.css" rel="stylesheet">
 <link href="css/Base2.css" rel="stylesheet">
  <link href="css/style_S_Q.css" rel="stylesheet">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>

<body>

<div id="wrapper">
  
  <div class="info-bar">
    <div class="container">
      <a class="icon fa fa-home" data-title="" href="index.jsp"></a>

      <!-- <a class="icon fa fa-arrow-right" data-title="Next Demo" href=""></a> -->

    </div>
  </div><!-- /.info-bar -->

  <header>
	<!-- /.branding -->
    <div class="branding">
      <div class="container clearfix">
      <h1> 訂單查詢 </h1>  
        <div class="logo">
          <a href=""><img alt="" onerror="" src=""></a>
        </div>
        

        <div class="social">
          <a class="fb" href="#" target="_blank">facebook</a>
          <a class="twitter" href="#"target="_blank">twitter</a>
          <a class="googleplus" href="#" target="_blank">google plus</a>
          <a class="rss" href="#" target="_blank">rss</a>
          <a class="email" href="#">email</a>
        </div>
      </div>
    </div>
    <!-- /.branding -->

    <div class="site-title">
      <div class="container">
        <h1> 訂單查詢 </h1> 
      </div>
    </div><!-- /.site-title -->

  </header>

  <div id="main">
    <div class="container">
      
      <section>
        <h1>輸入資訊</h1>
        <form name="form1" method="post" action="" class="input-list style-1 clearfix">
        <ul >
          <li>
            <input name="mail_account" type="text" id="mail_account" placeholder=": E-Mail" width="300">
          </li>
          <li>
            <input name="phone_account" type="text" id="phone_account" placeholder=":Mobile-Phone" class="focus" width="300">
          </li>
        </ul>
				<input type="submit" name="Submit" class="btn btn-danger" value="搜尋" >
				<!--  <input type="submit" name="Submit" class="btn btn-danger" value="顯示所有訂單">-->
		</form>
		 </section>
				<table id='sort' class='sort'>
				      <thead>
				        <tr>
				        
						<th>序號</th>
						<th>信箱</th>
						<th>手機</th>
						<th>訂票時間</th>
						<th>場次</th>
						<th>人數</th>
						<!-- <th>客戶名稱</th> -->
						<!-- <th>有(無)效訂單</th> -->
						
						<th>編號</th>
						<th>廳別</th>
						<th>播映時間</th>
						<th>座位</th>
						<!-- <th scope="col" abbr="Starter">座位售出</th>	  -->			
						<th>電影名稱</th>					
						<th>版本</th>
						<!-- <th>seat_list</th>	-->			
						<!-- <th>編輯</th> -->
						<th>刪除</th>
				
				        </tr>
				      </thead>
				      
				        <%
				request.setCharacterEncoding("utf-8");
				String mail_account = request.getParameter("mail_account");
				String phone_account = request.getParameter("phone_account");
				String option = String.valueOf(request.getParameter("Submit"));
				
				AllJoinDAO dao = new AllJoinDAODBImpl();
				
				if(mail_account != null && phone_account != null && phone_account != "" && mail_account != ""){
				ArrayList<AllJoin> join_list = dao.getAllTickets();
		
					join_list = dao.getOrderedTickets(mail_account.trim(),phone_account.trim());
					for (AllJoin ticket : join_list) {
				
			%>
			<tbody>
				<tr>
					<td><%=ticket.getT_ticket_no()%></td> <!-- 訂票序號 -->
					<td><%=ticket.getMail_account()%></td>  <!-- 客戶信箱 -->
					<td><%=ticket.getPhone_password()%></td> <!-- 手機號碼 -->
					<td><%=ticket.getOrder_date()%></td>	<!-- 訂票時間 -->
					<td><%=ticket.getT_session_ID()%></td> <!-- 場次編號 -->
					<td><%=ticket.getPeople()%></td> <!-- 人數 -->
					<%-- <td><%=ticket.getCustomer_name()%></td> --%>
					<!-- <td><%=ticket.getT_valid()%></td>	有(無)效訂單  -->				
					<td><%=ticket.getS_movie_no()%></td> <!--電影編號 -->
					<td><%=ticket.getS_room()%></td> <!-- 廳別  -->
					<td><%=ticket.getShow_date() + " " + ticket.getShow_time()%></td> <!-- 播映時間(合併)  -->
				    <td><%="R" + ticket.getR_axis() + "S" + ticket.getS_axis()%></td>  <!-- 座位售出    --> 
			 <!-- 	<td><%=ticket.getSold()%></td> --> 
					<td><%=ticket.getMovie_name_chinese()%></td>					
					<td><%=ticket.getVersion()%></td>
					<!--  <td><%=ticket.getSeat_list()%></td> -->
					
					<!-- <td><a href=modify.jsp?id=" + id + ">編輯</a></td> -->
					<%-- <td><a href="movie_edit.jsp?id=<%=movie.get_m_no()%>">編輯</a></td> --%>
					<td><a href="ticket_cancel.jsp?id=<%=ticket.getT_ticket_no()%>"
						onclick=return(confirm('確定取消訂單嗎？'))>取消</a></td>
				</tr>
				<%
					}
				}
				%>
				      </tbody>
				    </table>
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
          <a href=""><img alt="" onerror="" src="images/killler.png" width="100px" height="100px" /> </a>
        </aside>

      
        
        
      </div>
     
    </div>
  </footer><!-- /footer -->
  
</div><!-- /#wrapper -->



</body>
</html>