<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="store.css">
  <link rel="stylesheet" href="message.css">
  <title>Document</title>
  <script type="text/javascript">
        function sentmessage(){
            var email=document.getElementById("Email").value;
            var name=document.getElementById("Name").value;
　          var message=document.getElementById("Message").value;
　          alert(email+"\n"+name+"\n"+message);
            return(email+"\n"+name+"\n"+message);
        }
        /*取得ratio值*/
        /*function   getRadioBoxValue(radioName){
            var obj = document.getElementsByName(radioName);
              for(i   =   0;   i   <   obj.length;   i++)    {
                  if(obj[i].checked)    {
                          return   obj[i].value;
                  }
              }
             return "undefined";
        }
        function abc(){
        var    a = getRadioBoxValue("Sex1");
        alert(a);
        }*/
    </script>

</head>
<body>
<div class="all">
	<div class="container">
	<!--Logo-->
		<div class="logo">
			<a href ="index.html" class=""><img src="image/logo.png"></a>
		</div>
	<!--index-->
		<!--search-->
		<div class="search">
			<input type="search" id="search" placeholder="搜尋商品..." />
            <span class="menu">
                <ul class="drop-down-menu">
                    <li><a href="index.html">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
                    </li>
                    <li><a href="store.html">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
                        <ul class="goods">
                            <li><a href="i6.i6s.html">Iphone6/6s</a>
                            </li>
                            <li><a href="i6.i6splus.html">Iphone6+</a>
                            </li>
                            <li><a href="i7.8.html">Iphone7/8</a>
                            </li>
                            <li><a href="i7.8plus.html">Iphone7/8+</a>
                            </li>
                            <li><a href="iX.html">IphoneX</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="member.html">會員中心</a>
                        <ul>
                            <li><a href="register.html">會員註冊</a>
                            </li>
                            <li><a href="#">修改資料</a>
                            </li>
                            <li><a href="#">訂單查詢</a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="shopping cart.html">購物車</a>
                    </li>
                    <li><a href="#">聯絡我們</a>
                        <ul>
                            <li><a href="about.html">組員簡介</a>
                            </li>
                            <li><a href="message.html">留言板</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </span>
            <span class="login">
                <a href="login.html">會員登入</a>
            </span>
		</div>
        <!--填寫留言板-->
        <div class="leave_message">
            <form action="add.jsp" accept-charset="utf-8" class="leave_message_form" class="">
                <fieldset>
                <!-- <fieldset class="form_message"> -->
                <table border="0" cellspacing="0" width="100%">
                    <tr>
                        <td nowrap width="13%"><font>您的大名：</font>
                        <input maxLength="10" id="Name" name="name" size="22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的性別：<input type="radio" value="BOY" name="Sex1" checked>男<input type="radio" value="GIRL" name="Sex1" >女</td>
                    </tr>
                    <tr>
                        <td>電子郵件： <input id="Email" name="email" size="22" maxLength="50" onBlur="mail(this)"></td>
                    </tr>
                    <tr>
                        <td valign="top"><font>留言內容：</font>
                        <textarea id="Message" name="content" rows="6" colspan="3" cols="52"></textarea></td>
                        <!-- <script src="css/common.js"></script>
                        <script type="text/javascript" language="javascript">
                            fnSetMaxLength("Message",500,false);
                        </script>-->
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn_go_to_leave_message" value="確定送出" onclick="sentmessage()"></td>
                       <!-- 取得ratio值
                        <input type="submit" name="Submit" value="提交" onclick="abc()"/>-->
                    </tr>
                </table>
            </fieldset>

             </form>
        </div>
        <%
            sql="select * from guestbook"; //算出共幾筆留言
            ResultSet temp=con.createStatement().executeQuery(sql);
            //讀取表單的input_pages
            String page_string = request.getParameter("input_pages");
            if (page_string == null) {  //第一次進入還沒有給current_page，因此為null
                page_string = "1";  //無留言時將頁數指標訂為1
            }
            Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
            //顯示留言
            int start_record=(current_page-1)*5;
            //遞減排序, 讓最新的資料排在最前面
            sql="SELECT * FROM guestbook ORDER BY no DESC LIMIT ";//LIMIT是限制傳回筆數
            sql+=start_record+",5";
            temp=con.createStatement().executeQuery(sql);
        %>
        <%-- 顯示留言板 --%>
        <div class="show_message">
                <form action="message_sumbit" method="get" accept-charset="utf-8">
                    <fieldset>
                        <h2>留言板</h2>
                        <table>
						<%while(temp.next()){%>
                            <tr>
                                <td>Name:<%out.println("訪客姓名:"+temp.getString("name")+"<br>");%></td></tr>
                            <tr>
                                <td>Email:<%out.println("E-mail:"+temp.getString("email")+"<br>");%></td></tr>
                            <tr>
                                <td>Message:<%out.println("留言內容:"+temp.getString("message")+"<br>");%></td></tr>
							<tr>
                                <td>Time:<%out.println("留言時間:"+temp.getString("time")+"<br><hr>");%></td></tr>
						<%}%>
                        </table>
                    </fieldset>
                </form>
        </div>

        <!-- 顯示目前頁數.. -->
		<%
            //Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet
           sql="select * from guestbook"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);
           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
		   if (page_num==0) { //無留言時將頁數指標訂為1
		       page_num=1;
           }
		   out.println("共"+page_num+"頁，目前在第"+current_page+"頁");
        %>
        <%-- 跳至第..頁 --%>
		<form action="mes.jsp?input_pages= <%= current_page %>" method="get">跳至
		    <input type="text" size="3" name="input_pages" value="<%=current_page%>"> 頁
			<input type="submit" value="送出">
		</form>
        <%-- 顯示第一頁下一頁 --%>
        <div class="page">
            <ul class="pagination">
        <%
            if(current_page!=1 && current_page!= page_num){
				out.print("<li><a href=mes.jsp?input_pages=1> 第一頁</a></li>"+"&nbsp");
				out.print("<li><a href=mes.jsp?input_pages="+(current_page-1)+">"+"上一頁"+"</a></li>"+"&nbsp");
                for(int i=1;i<=page_num;i++) {
			        out.print("<li><a href='mes.jsp?input_pages="+i+"'>"+i+"</a></li>&nbsp;"); //&nbsp;html的空白
                }
				out.print("<li><a href=mes.jsp?input_pages="+(current_page+1)+">"+"下一頁"+"</a></li>"+"&nbsp");
				out.print("<li><a href=mes.jsp?input_pages="+page_num+">"+"最後一頁"+"</a></li>"+"&nbsp");
		    }else if(current_page==1){
                out.print("第一頁");
                out.print("上一頁");
                for(int i=1;i<=page_num;i++) { //使用get傳輸方式,建立1,2,...頁超連結
			        out.print("<a href='mes.jsp?input_pages="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
                }
				out.print("<a href=mes.jsp?input_pages="+(current_page+1)+">"+"下一頁"+"</a>"+"&nbsp");
				out.print("<a href=mes.jsp?input_pages="+page_num+">"+"最後一頁"+"</a>"+"&nbsp");
			}else if(current_page==page_num){
				out.print("<a href=mes.jsp?input_pages=1>"+"第一頁"+"</a>"+"&nbsp");
				out.print("<a href=mes.jsp?input_pages="+(current_page-1)+">"+"上一頁"+"</a>"+"&nbsp");
                for(int i=1;i<=page_num;i++) { //使用get傳輸方式,建立1,2,...頁超連結
			        out.print("<a href='mes.jsp?input_pages="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
                }
                out.print("下一頁");
                out.print("最後一頁");
			}
        %>
            </ul>
        </div>
        <%-- <div class="page">
            <ul class="pagination">
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a class="active" href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>
        </div> --%>
		<div class="footer">
			@copyright Epoch
		</div>
	 </div>






     <!-- <script type="text/javascript">
        function mail(){
        if(document.send.email.value==''){
            document.getElementById("msg-email").innerHTML="請輸入電子郵件地址";
            }
            else{
                document.getElementById("msg-email").innerHTML="";
            }
            }
			</script>
    -->

</body>
</html>