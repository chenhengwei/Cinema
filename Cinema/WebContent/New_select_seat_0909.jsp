<%-- 
    Document   : Select_seat
    Created on : Aug 25, 2015, 11:38:16 PM
    Author     : chenwesley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); 
  String tmp=request.getParameter("mgId");
  if(tmp == null){response.sendRedirect("index.jsp");} 
  %>
<html>

    <head>
        <link href="images/killler.png" rel="shortcut icon">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        
        <meta name="viewport" content="width = device-width">
        
         <link rel="stylesheet"  type="text/css" href="css/select_seat_adv.css">
         <link rel="stylesheet"  type="text/css" href="css/jquery.seat-charts.css">
         <link rel="stylesheet"  type="text/css" href="css/Select_Seats.css">
         <link rel="stylesheet"  type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
         
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.seat-charts.min.js"></script>
  		<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  		
	  		<!-- Latest compiled and minified CSS -->
			<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	         <!-- Optional theme -->
				<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

			<!-- Latest compiled and minified JavaScript -->
			<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  		
  		
  		
  		
  		
    	 <!--  -->
    	 <link rel="stylesheet" type="text/css" href="css/font-awesome/font-awesome.css" >
		 <link rel="stylesheet" type="text/css" href="css/Base3.css" >
  		 <link rel="stylesheet" type="text/css" href="css/style_S.css" >
    	
    	<!--////// -->
    	
    	  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
         <script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 
    	<!--///// -->
    </head>

  <!-- SlidesJS Required: -->
 <body>
 <!--  -->
 <div id="wrapper">
  
  <div class="info-bar">
    <div class="container">
      <a class="icon fa fa-home"  href="index.jsp"></a>
      <!-- <a class="icon fa fa-arrow-left" href=""></a>
           <a class="icon fa fa-arrow-right" data-title="Next Demo" href=""></a> -->
   
    </div>
  </div><!-- /.info-bar -->
</div>

  <header>
   
	 <!--  /.branding 
    <div class="branding">
      <div class="container clearfix">
      <h1>  </h1>
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

      /.branding 

    <div class="site-title">
      <div class="container">
        <h1>  </h1>
      </div>
    </div><!-- /.site-title
     -->
  </header>
 
 
 <!--  -->
 <div id="main">
    <div class="container_slider">
    <div id="slides">
      <img src="images/e1.jpg" />
      <img src="images/e2.jpg" />
      <img src="images/e3.jpg" /> 
      <img src="images/e4.jpg" />
    </div>
  </div>

  <script src="js/jquery.slides.min.js"></script>

  <script>
			  $(function() {
			      $('#slides').slidesjs({
			        width: 940,
			        height: 350,
			        play: {
			          active: true,
			          auto: true,
			          interval: 4000,
			          swap: true
			        }
			      });
			    });
  
				//   $(function() {
				// 	    $( "#dialog" ).dialog({
				// 	        width: 730,
				// 	        height: 550,
					        
				// 	         });
				// 	  });
				 //=========================== 
				  $(function() {
				
					  $("#dialog").dialog({
					      title: ' 訂票與取票注意事項：',
					      bgiframe: true,
					      width: 730,
					      height: 600,
					      modal: true,
					      draggable: true,
					      resizable: false,
					      overlay:{opacity: 0.7, background: "#FF8899" },
				
					      buttons: {
					          '同意以上規範資訊': function() {
					              $(this).dialog('close');
					          }
					      }
					  });
				  
					  });
				  
				//===========================
				  
  
  
  

  </script>
  <!-- End SlidesJS Required -->
     
        <div id="page">
            <div class="section header clear">
			
                <div class="author-details">

                
					<script cf-hash="f9e31" type="text/javascript">
					 //-------------------------    
// 					 function myrefresh()
// 					 {
// 					      window.location.reload();
// 					 }
// 					 setTimeout('myrefresh()',120000);
					//------------------------------
					
					//-------------------------------
									
// 					countdown("countdown", 10, 0);
// 				    function countdown(element, minutes, seconds) {
// 				        // 設定時間倒數
// 				        var time = minutes * 60 + seconds;
// 				        var interval = setInterval(function () {
// 				            var el = document.getElementById(element);
				
// 				            // 時間為0則轉頁面
// 				            if (time == 0) {
// 				                window.location = "../index.aspx";
// 				                clearInterval(interval);
// 				                return;
// 				            } 
				
// 				            //分和秒的顯示設定
// 				            var minutes = Math.floor(time / 60);
// 				            if (minutes < 10) minutes = "0" + minutes;
// 				            var seconds = time % 60;
// 				            if (seconds < 10) seconds = "0" + seconds;
// 				            var text = minutes + ":" + seconds;
// 				            el.innerHTML = text;
// 				            time--;
// 				        }, 1000);
// 				    }
									
					
				    var count=120;

				    var counter=setInterval(timer, 1000); //1000 will  run it every 1 second

				    function timer()
				    {
				      count=count-1;
				      if (count <= 0)
				      {
				         clearInterval(counter);
				         return;
				      }
                      if (count == 1){
                    	  
                    	  window.location.reload();
                      }
				     document.getElementById("timer").innerHTML=count + " secs"; // watch for spelling
				    }

					 //-------------------------------
					
					
					                        /* <![CDATA[ */!function () {
					                            try {
					                                var t = "currentScript"in document ? document.currentScript : function () {
					                                    for (var t = document.getElementsByTagName("script"), e = t.length; e--; )
					                                        if (t[e].getAttribute("cf-hash"))
					                                            return t[e]
					                                }();
					                                if (t && t.previousSibling) {
					                                    var e, r, n, i, c = t.previousSibling, a = c.getAttribute("data-cfemail");
					                                    if (a) {
					                                        for (e = "", r = parseInt(a.substr(0, 2), 16), n = 2; a.length - n; n += 2)
					                                            i = parseInt(a.substr(n, 2), 16) ^ r, e += String.fromCharCode(i);
					                                        e = document.createTextNode(e), c.parentNode.replaceChild(e, c)
					                                    }
					                                }
					                            } catch (u) {
					                            }
					                        }();/* ]]> */
					                    </script>
                   
                </div>
            </div>
            <div class="section">
               <!--  <h2 id="toc">Dear customer,</h2>
                <h3 id="1">pick up seats</h3>--> 
            </div>
            <div class="results"></div>


            <div class="demo">

                <div id="seat-map" class="seatCharts-container" tabindex="0" aria-activedescendant="1_0">

                    <div class="front">SCREEN</div>
                    <!-- 會自己新增出列表 -->  
               		 </div>
               		 
					<div id="legend" class="seatCharts-legend">
                        <ul class="seatCharts-legendList">
                            <li class="seatCharts-legendItem">
                                <!--
                                <div class="seatCharts-seat seatCharts-cell available">
                                </div>
                                <span class="seatCharts-legendDescription">Option</span>
                                -->
                            </li>
                            <li class="seatCharts-legendItem">
                                <!-- 
                                <div class="seatCharts-seat seatCharts-cell unavailable"></div>
                                 <span class="seatCharts-legendDescription">Sold</span>
                                -->
                            </li>

                        </ul>
                    </div>
                <div class="booking-details">

					<br>
					
					<P>頁面重載入時間: <span id="timer" style="color:green"></span><P>
                    <p>電影名稱: <span style="color:blue"> <%=request.getParameter("mgId")%></span></p>
                    <p>場次日期: <span style="color:blue"> <%=request.getParameter("todays_date")%> </span></p>
                    <p>訂票人數: <span style="color:blue"> <%=request.getParameter("ticketQuantity")%> </span></p>
                    <%-- <p>起: <%=request.getParameter("sessionTimeStart")%> 迄: <%=request.getParameter("sessionTimeEnd")%></p> --%>
                    <p>放映時間: <span style="color:blue"> <%=request.getParameter("sessionList")%> </span> 編號: <span style="color:blue"> <%=request.getParameter("session_ID")%> </span>
                    <p>已選購的座位: </p>
                    <ul id="selected-seats">
                        <!-- 會自己新增 選擇位子 -->    
                    </ul>
                    <p>已選購票數: <span id="counter" style="color:blue">0</span></p>
                    <p>購票總金額: <b>$<span id="total" style="color:red">0</span></b></p>
                    <br>
                    <!--  <button class="checkout-button">BUY</button>-->

                </div>
               <div id="Customer_info">
        <!-- ========================================================================================================== -->
                <form id="selected-opt" name="selected-opt" action="Order_Comfirm_auto_mail.jsp" method="post" onSubmit="return check_data_C();">
				<div class="ordering-details" float:right>
				<div>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="https://upload.wikimedia.org/wikipedia/zh/3/3d/Minions_poster.jpg"id="img_Movie" width="227.5px" height="320px" /></p>
							
				</div>
				<p><strong>請輸入您的相關訂票資訊:</strong></p>		
				<p> <strong>Email信箱:</strong>
								<input id="t1" type="text" name="seat" onblur="getData();" /> <!-- checkEmail(); -->
								</p>
							
							    <input type="hidden" id="dup" value="1" />
			    <p><strong>手機&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:</strong>
			    				<input id="t2" type="text" name="seat" onblur="CheckData_EP();"/>&nbsp<img src ="images/a2.png" id="img1" width="20px" height="20px" />
			    				</p>
				</div>
			<!-- Movie   -->	<input type="hidden" name="seat" value="<%=request.getParameter("mgId")%>" id="<%=request.getParameter("mgId")%>"> 
			<!-- Time    -->	<input type="hidden" name="seat" value="<%=request.getParameter("todays_date")%>" id="<%=request.getParameter("todays_date")%>"> 
			<!-- People  -->	<input type="hidden" name="seat" value="<%=request.getParameter("ticketQuantity")%>" id="<%=request.getParameter("ticketQuantity")%>"> 
								<!--    
								<input type="hidden" name="seat" value="<%=request.getParameter("sessionTimeStart")%>" id="<%=request.getParameter("sessionTimeStart")%>"> 
								<input type="hidden" name="seat" value="<%=request.getParameter("sessionTimeEnd")%>" id="<%=request.getParameter("sessionTimeEnd")%>">   
								-->
			<!-- 放映時間  -->	<input type="hidden" name="seat" value="<%=request.getParameter("sessionList")%>" id="<%=request.getParameter("sessionList")%>"> 
			<!-- 訂票金額  -->	<input type="hidden" name="seat" value="" id="Money"> 
			<!-- 訂位人數  -->	<input type="hidden" name="seat" value="" id="ordered_pp"> 
								
				 
								
				<p>
				
				<%for(int k=0;k<95;k++){out.print("&nbsp");} %>
				<a href="index.jsp"><input type="button" name="back" value="回選單" class="btn btn-danger" align="float:right"/> </a>
				&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" value="下訂單" class="btn btn-danger" />
				</p>
				
				</form>
		 <!-- ========================================================================================================== -->		
                </div>
                <div style="clear:both">
                
                </div>
				<form >
				
				
				</form>
				
				
            </div>
					<%
					// inport from SQL sold_Seat
					SeatDAO dao = new SeatsDAODBImpl();
					ArrayList<Seats> list = dao.OrderedSeats();
					//System.out.println(list.size());
					String sold_seats ="";
					for(Seats m : list){
					   
					    sold_seats = sold_seats+("'"+m.R_a+"_"+m.S_a+"',");
					                           
					}
					//System.out.println(sold_seats);
					
					%>
					            
			<script type="text/javascript">
			
			    SC_pp= null;
			    var arr = [<%=sold_seats%>];
                var price = 300; //price
                var arr1 = ['1-1','1_2', '4_4', '4_5', '6_6', '6_7', '8_5', '8_6', '8_7', '8_8','10_1','10_2','10_3',];
                var Order_PP = <%=request.getParameter("ticketQuantity")%>;
                
                $(document).ready(function () {
                    var $cart = $('#selected-seats'), //Sitting Area
                        $counter = $('#counter'), //Votes
                        $total = $('#total'), //Total money
                        $cart_opt = $('#selected-opt');
					
                    var sc = $('#seat-map').seatCharts({
                        map: [//Seating chart
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa'
                        ],
                        naming: {
                            top: false,
                            getLabel: function (character, row, column) {
                                return column;
                            }
                        },
                        legend: {//Definition legend
                            node: $('#legend'),
                            items: [
                                ['a', 'available', 'Option'],
                                ['a', 'unavailable', 'Sold']
                            ]
                        },
                        click: function () { //Click event
                        	
                            if (this.status() == 'available' && Order_PP > sc.find('selected').length) { //optional seat
                                $('<li>R' + (this.settings.row + 1) + ' S' + this.settings.label + '</li>')
                                        .attr('id', 'cart-item-' + this.settings.id)
                                        .data('seatId', this.settings.id)
                                        .appendTo($cart);
                                //alert('id');
                                //alert('cart-item-');
								
								//alert(this.settings.label);
								
                                $counter.text(sc.find('selected').length + 1);
                                SC_pp=sc.find('selected').length + 1;
                                document.getElementById("ordered_pp").value = sc.find('selected').length + 1;//人數
                                SC_pp_check  = document.getElementById("ordered_pp").value;
                              //alert(this.settings.row);
                                
                                $total.text(recalculateTotal(sc) + price);
                                document.getElementById("Money").value = recalculateTotal(sc) + price;//價錢
                                //alert(this.settings.id);
                                //<input type="hidden" name="seat" value="1_10">
//                                 $('<input/>')
//                                 .attr('type', 'hidden')
//                                 .attr('name', 'seat')
//                                 .attr('value', this.settings.id)
//                                 .attr('id', 'opt'+this.settings.id)
//                                 .appendTo($cart_opt);

                                $('<input/>')
                                 .attr('type', 'hidden')
                                 .attr('name', 'seat_Ordered')
                                 .attr('value', (this.settings.row + 1))
                                 .attr('id', 'opt_R'+(this.settings.row + 1))
                                 .appendTo($cart_opt);
                                
                                $('<input/>')
                                .attr('type', 'hidden')
                                .attr('name', 'seat_Ordered')
                                .attr('value', this.settings.label)
                                .attr('id', 'opt_S'+ this.settings.label)
                                .appendTo($cart_opt);
                                
                                //============================//
                                
                                getData();//check位子 是否 已定位
                                
                                //============================//
                                
                                return 'selected';
                            } else if (this.status() == 'selected') { //Checked
                                //Update Number
                                $counter.text(sc.find('selected').length - 1);
                                document.getElementById("ordered_pp").value = sc.find('selected').length - 1;//人數
                                //alert(sc.find('selected').length);
                                //update totalnum
                                SC_pp_check  = document.getElementById("ordered_pp").value;
                                $total.text(recalculateTotal(sc) - price);
                                document.getElementById("Money").value = recalculateTotal(sc) - price; //價錢
                                //alert(recalculateTotal(sc) - price);
                                //Delete reservation
                                $('#cart-item-' + this.settings.id).remove();
                                //$('#opt'+this.settings.id).remove();
                                
                                $('#opt_R'+(this.settings.row + 1)).remove();
                                $('#opt_S'+ this.settings.label).remove();
                                
                                //optional
                                return 'available';
                            } else if (this.status() == 'unavailable') { //sold
                                return 'unavailable';
                            } else {
                                return this.style();
                            }
                      
                        }
                    });
                    //sold seat
                    sc.get(arr).status('unavailable');

                });
				
                //sum total money
                function recalculateTotal(sc) {
                    var total = 0;
                    sc.find('selected').each(function () {
                        total += price;
                        
                    });
                    
                    return total;
                    
                }
                
                //=====================================================================//  
                
                var t1 = document.getElementById('t1');
                var t2 = document.getElementById('t2');

                function check_data_C(){
                    var flag = true;
                    var message = '' ;
                	 //alert("000");

                   // ---------- Check ----------
                   if(SC_pp == "" || SC_pp == null || SC_pp_check == 0){
                	 message = message + '請選位\n';
                  	 flag = false;
                  	 //alert("請選位");
                   }else{
                	   
                    if(<%=request.getParameter("ticketQuantity")%> != SC_pp_check  ){
                        message = message + '訂位人數不符合\n';
                        //window.location.reload(); 
                        flag = false;}
                    //alert("訂位人數不符合");
 				
 				  // ---------- Check ----------
                    if( check_Seat_available.trim()== 'Y'){
                            message = message + num+': 座位 已被預約",請重新選購\n';
                            flag = false;
                            window.location.reload();    
                    }
 				   }
					

                   // ---------- Check ----------
                                   
                  if(t1.value==''){
                      message = message + 'Email不能為空白\n';
                      flag = false;
                      //alert("Email空白");
                    }else{
                    	Email = document.getElementById('t1').value;
                  if (Email.search(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/)!=-1 ) {
 					  //emailMsg.innerHTML = "";
 					  //emailFlag = true;
                	  message = message + '';
 					} else {
 						message = message + 'Email 電子信箱格式有誤\n';
 					  //emailMsg.innerHTML = "<font color='red'>電子信箱格式有誤, 請重新輸入!</font>";
 						//alert("電子信箱格式有誤, 請重新輸入!");
 						flag = false;
 					}
                   }

                   // ---------- Check ----------
                   
                   if(t2.value ==''){
                      message = message + '電話不能為空白\n';
                      flag = false;
                      //alert("電話");
                   }
                   // ---------- Check ----------

                 //alert(SC_pp);

                   // ---------- Check ----------
                   if(!flag) {
                      alert(message);
                      
                   }
                   // ---------- Check ----------
                   if(flag){
                       selected-opt.submit();
                   }
                   return flag;
                }
                
                //========================================================================================//
                Email;
				function checkEmail() {
					//alert("check mail");
					Email = document.getElementById('t1').value;
					if (Email.search(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/)!=-1) {
					  //emailMsg.innerHTML = "";
					  //emailFlag = true;
						message = "";
					} else {
						message = message + 'Email 電子信箱格式有誤\n'
					  //emailMsg.innerHTML = "<font color='red'>電子信箱格式有誤, 請重新輸入!</font>";
						alert("電子信箱格式有誤, 請重新輸入!");
					}
				}
                
                
            var request;
			function getData(){
					//alert("11111111");
					var i,j,obj,R,S;
					obj = document.getElementsByName('seat_Ordered');  
					//alert(obj.length);
					for(i=0; i<= (obj.length-2); i=i+2){  
					    R=obj[i].value; 
					    S=obj[i+1].value; 
					 
				    //alert(R+","+S);
				    num = "R"+R+"_"+"S"+S;
				    
					request = new XMLHttpRequest();
	
					request.open("GET", "Check_seats_avaliable.jsp?R="+R+"&S="+S,false);
					// 這行是設定 request 要去哪取資料，尚未開始取
					// 第三個參數打 true 可以想成，利用另外一個執行緒處理 Request
					// 第三個參數打 false 可以想成，利用這一個執行緒處理 Request
					
					//var img1 = document.getElementById("img1");
					//img1.src = "img/wait.gif";
					
					request.onreadystatechange = updateData;
					// 當記憶體中的瀏覽器狀態改變時，呼叫 updateData 這個 function
					
					request.send(null); // 發動 request 去取資料	
				}
			}
			
			function updateData(){
				if (request.readyState == 4){
					
				
					//alert(request.responseText);
					 check_Seat_available = request.responseText;
					
					if(check_Seat_available.trim() != "Y"){
						
						//alert(check_Seat_available);
						//alert(num+": 座位 可以下訂");
						
					}else{
						//alert(check_Seat_available);
						//alert(check_Seat_available.trim());
						alert(num+": 座位 已被預約");

						}
					
					//var dup = document.getElementById("dup");
					//dup.value = request.responseText.trim();
					
					//if (dup.value == "1")
					//	{
					//	var img1 = document.getElementById("img1");
					//	img1.src = "img/a1.png";
					//	}
					//else
					//	{
					//	var img1 = document.getElementById("img1");
					//	img1.src = "img/a0.png";
					//	}
					// alert(dup.value);
				}
			}
			
			var request_info;
			function CheckData_EP()
			{  //alert("ssss");
				var t1 = document.getElementById("t1");
				var t2 = document.getElementById("t2");
				request_info = new XMLHttpRequest();
				request_info.open("GET", "Info_check.jsp?mail="+t1.value+"&phone="+t2.value,true);
				// 這行是設定 request 要去哪取資料，尚未開始取
				// 第三個參數打 true 可以想成，利用另外一個執行緒處理 Request
				// 第三個參數打 false 可以想成，利用這一個執行緒處理 Request
				
				request_info.onreadystatechange = CheckData_E_P;
				// 當記憶體中的瀏覽器狀態改變時，呼叫 updateData 這個 function
				
				request_info.send(null); // 發動 request 去取資料
				
				
			}
			
			function CheckData_E_P(){
				 //alert(request_info.readyState);
				if (request_info.readyState == 4){
					
					
					   //alert(request.responseText);
					  var dup = document.getElementById("dup");
					  dup.value = request_info.responseText.trim();
					  
					  if (dup.value == "1")
					   {
					   var img1 = document.getElementById("img1");
					   img1.src = "images/a0.png";
					   }
					  else
					   {
					   var img1 = document.getElementById("img1");
					   img1.src = "images/a1.png";
					   }
					  // alert(dup.value);
					 }
			
			}
 
                
            </script>
        </div>
       </div> 
        <!--footer-->
    
 <!-- <h1 class="theme-name"><strong>Goocode.net</strong><span>© 2013 - 2015 GOOCODE</span></h1> -->
      <!--  -->

<footer>
    <div class="container">
      <div class="clearfix">
        <aside>
        <span class="clearfix"><strong>電影</strong></span>
          <ul>
                        <li><a href="http://www.ezding.com.tw/welcome.do">最新預告</a></li>
                        <li><a href="#">評價評論</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">即將上映電影</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">訂票Top10</a></li>
          </ul>
        </aside>

        <aside>
        <span style="color:white"><strong>各區影城訂票</strong></span>
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
		                <!-- ///////////////////////////////////////////////////////////////// -->
                <div id="dialog">

				<p>刺客電影院訂原價訂票不適用影城各式票券本優惠含票價&系統服務費，</p>
				<p>未含訂票手續費(20元/張)。訂票手續費比照影城官網規定，</p>
				<p>於取票時在影城櫃檯支付。訂票手續完成後，將會以手機簡訊和e-mail告知持卡人訂票序號</p>
				<p>取得訂票序號後始完成訂票。完成網路訂票後，請於開演前40分鐘前持訂票序號至「網路訂票櫃檯</p>
				<p>告知訂票序號即可取票；如逾時未取票，您的訂票記錄將被自動取消，訂票系統亦將取消授權及交易</p>
				<p>持卡人則不會被扣任何自付額。如欲更改訂票數量，請先取消訂位後再重新訂位</p>
				<p>以利取消持卡人刷卡授權。訂票後如欲取消訂票，請進入『顧客中心』，點選『取消訂票』</p>
				<p>登入後即可線上取消訂票。如遺失訂票序號，可進入『顧客中心』點選『訂票查詢』，登入後</p>
				<p>即可查詢你的訂票序號。取票後退票或是訂多取少影城將依據訂票數收取訂票手續費。</p>
				<p>因電影票課徵娛樂稅，因此全台影城電影購票皆不開立發票，而以票根作為購票證明。</p>
				<p>銀行保留隨時修改、變更或終止本活動之權利。</p>
				<p>客服專線02-8912-6600(平日10:00-19:00 假日11:00- 20:00)</p>
				<p>官方網站 http://www.killer-Movie.com.tw/</p>
  			
				</div>
                <!-- ///////////////////////////////////////////////////////////////// -->
      
        
        
      </div>
     
    </div>
  </footer>
  <!-- /footer -->
  





	<!--  -->





        <script type="text/javascript">
            /* <![CDATA[ */
            (function () {
                try {
                    var s, a, i, j, r, c, l = document.getElementsByTagName("a"), t = document.createElement("textarea");
                    for (i = 0; l.length - i; i++) {
                        try {
                            a = l[i].getAttribute("href");
                            if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) {
                                s = '';
                                j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection");
                                if (a.length > j) {
                                    r = parseInt(a.substr(j, 2), 16);
                                    for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) {
                                        c = parseInt(a.substr(j, 2), 16) ^ r;
                                        s += String.fromCharCode(c);
                                    }
                                    j += 1;
                                    s += a.substr(j, a.length - j);
                                }
                                t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;");
                                l[i].setAttribute("href", "mailto:" + t.value);
                            }
                        } catch (e) {
                        }
                    }
                } catch (e) {
                }
            })();
            /* ]]> */
        </script>

    </body>
</html>