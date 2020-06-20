<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>校园宿舍管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="Style/s_index.css">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.TB_TeacherID.value)){  
   alert("请选择要添加的管理员！"); 
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


<div class="s_index_cen">
  <center>
    <table class="s_index_cen" width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="padding-top: 50px;" height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
              <%@ include file="Left.jsp"%>
            </td>
            <td width="709" align="center" valign="top" bgcolor="#F6F9FE"><table width="709" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">楼宇管理员设置</td>
              </tr>
              <tr>
                <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                  <form name="form1" method="post" action="TBAddSave.action">
                    <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="42%" height="30" style="padding-left:20px;"> 功能导航： <a href="BuildingManager.action">返回上层</a></td>
                        <td width="58%">添加管理员：
                          <select name="TB_TeacherID" id="TB_TeacherID">
                            <option value="">请选择</option>
                            <s:iterator value="teacherlist">
                              <option value="${Teacher_ID}">${Teacher_Name}</option>
                            </s:iterator>
                          </select>
                          <input type="submit" name="button" id="button" value="点击添加">
                          <label for="TB_BuildingID"></label>
                          <input name="TB_BuildingID" type="text" class="noshow" id="TB_BuildingID" value="${Building_ID}"></td>
                      </tr>
                    </table>
                  </form>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr align="center"  class="t1">
                      <td height="25" bgcolor="#D5E4F4"><strong>姓名</strong></td>
                      <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                      <td bgcolor="#D5E4F4"><strong>电话</strong></td>
                      <td bgcolor="#D5E4F4"><strong>用户名</strong></td>
                      <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                    </tr>
                    <s:iterator id="aa" value="list">
                      <tr align="center">
                        <td height="25" align="center">${Teacher_Name}</td>
                        <td>${Teacher_Sex}</td>
                        <td>${Teacher_Tel}</td>
                        <td align="center">${Teacher_Username}</td>
                        <td align="center"><a href="TBDel.action?TB_ID=${TB_ID}&Building_ID=${TB_BuildingID}" onClick="return confirm('确定要将该管理员从该楼宇移除吗？')">移除</a></td>
                      </tr>
                    </s:iterator>
                  </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>

  </center>
</div>


<div class="s_footer" style="height: 90px;">
  <div class="s_foot">
    <p>© &nbsp;西北师范大学&nbsp; 2020 <a href="https://www.nwnu.edu.cn/">nwnu.edu.cn.com</a>  All &nbsp;Rights Reserved&nbsp;&nbsp;<a target="_blank" href="#">京ICP证110141号</a>&nbsp;&nbsp;京公网安备1101050188221</p>
    <p class="red">版权所有：大眼呆萌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;github地址：<a href="https://github.com/dayandaimeng/p1">github.com/dayandaimeng</a></p>
  </div>
</div>
</body>
</html>
