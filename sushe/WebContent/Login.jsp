<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>"> 
  <title>校园宿舍管理系统</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="Style/Style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="Style/s_index.css">
  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<script language="JavaScript">

function mycheck(){
   if(isNull(form1.Type.value)){  
   alert("请选择身份！"); 
   return false;
   }
   if(isNull(form1.Username.value)){  
   alert("请输入用户名！"); 
   return false;
   }
   if(isNull(form1.Password.value)){
   alert("请输入密码！");
   return false;
   }
      
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<div class="s_top">
  <div class="s_top_left">
    <p style="background:url(Images/login.jpg) no-repeat; width: 210px;height:88px;float: left;background-size:210px 86px; ">
      <a href=""></a>
    </p>
    <a class="s_top_img" href="">
      <img src="Images/top.png" style="height:80px;width:240px;" alt="">
    </a>
  </div>
  <div class="s_top_right">
    欢迎来到西北师范大学！
    <a style="color:#0066cc;" href="" class="s_top_a1">免费注册</a>
    <a style="color:#666;" href="" class="s_top_a2">帮助中心</a>
  </div>
</div>
<div class="s_cen">
  <div class="s_cen_left">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="Images/轮播1.png" alt="...">
            <div class="carousel-caption">

            </div>
          </div>
          <div class="item">
            <img src="Images/轮播2.png" alt="...">
            <div class="carousel-caption">

            </div>
          </div>
          <div class="item active">
            <img src="Images/轮播3.png" alt="...">
            <div class="carousel-caption">

            </div>
          </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
  </div>
  <div class="s_cen_right">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr style="height: 508px;">
        <td style="height: 508px;" align="center" valign="top">
          <table style="height: 508px;width: 100%;" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td style="height: 125px;width: 100%;" align="center"><h3>校园宿舍管理系统</h3></td>
            </tr>
            <tr>
              <td align="center" valign="top">
                <form name="form1" action="GoLogin.action" method="post" onSubmit="return mycheck()">
                  <table style="height: 300px;" width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="10" colspan="1" align="center" class="STYLE2"><span style="color:red;">
                    <%if(request.getAttribute("Msg")!=null){%>
                    <%=request.getAttribute("Msg")%>
                    <%}%>
                  </span></td>
                    </tr>
                    <tr style="margin-left: 50px;">
                      <td style="margin-left: 50px;" height="40" align="right" class="STYLE2">
                        <span style="width: 38px;height: 30px;margin-left: 15px" class="pull-left input-group-addon glyphicon glyphicon-heart-empty"></span>
                        <p style="padding-top: 5px; border:1px solid #8c8c8c;border-radius: 15%; margin-top:0px;width: 123px;height: 33px;font-size: 14px; margin-left: 20px">请选择您的身份：</p></td>
                      <td align="left"><select style="margin-top:-15px;width: 149px;height: 33px;" name="Type" id="Type">
                        <option value="">请选择</option>
                        <option value="系统管理员">系统管理员</option>
                        <option value="楼宇管理员">楼宇管理员</option>
                        <option value="学生">学生</option>
                      </select></td>
                    </tr>
                    <tr>
                      <td width="37%" height="30" align="right" class="STYLE2">
                        <span style="width: 38px;height: 30px;margin-left: 15px" class="pull-left input-group-addon glyphicon glyphicon-user"></span>
                        <p style="padding-top: 5px; border:1px solid #8c8c8c;border-radius: 15%; margin-top:0px;width: 123px;height: 33px;font-size: 14px; margin-left: 20px">请选择您的用户名：</p></td>
                      <td width="300" align="left"><input style="margin-top:-15px;width: 149px;height: 33px;" type="text" name="Username" id="Username" class="text1" /></td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="STYLE2">
                        <span style="width: 38px;height: 30px;margin-left: 15px" class="pull-left input-group-addon glyphicon glyphicon-user"></span>
                        <p style="padding-top: 5px; border:1px solid #8c8c8c;border-radius: 15%; margin-top:0px;width: 123px;height: 33px;font-size: 14px; margin-left: 20px">请选择您的密码：</p></td>
                      <td align="left"><input style="margin-top:-15px;width: 149px;height: 33px;" type="password" name="Password" id="Password" class="text1" /></td>
                    </tr>
                    <tr>
                      <td height="30" colspan="2" align="center"><label>
                        <input type="submit" class="btn btn-danger s_cen_input" name="button" id="button" value="登录">
                      </label></td>
                    </tr>
                  </table>
                </form>
              </td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</div>


<div class="s_footer" style="height: 90px;">
  <div class="s_foot">
    <p>© &nbsp;西北师范大学&nbsp; 2020 <a href="https://www.nwnu.edu.cn/">nwnu.edu.cn.com</a>  All &nbsp;Rights Reserved&nbsp;&nbsp;<a target="_blank" href="#">京ICP证110141号</a>&nbsp;&nbsp;京公网安备1101050188221</p>
    <p class="red">版权所有：大眼呆萌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;github地址：<a href="https://github.com/dayandaimeng/p1">github.com/dayandaimeng</a></p>
  </div>
</div>


</body>
<script src="jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</html>
