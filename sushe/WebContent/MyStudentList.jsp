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
                <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生管理</td>
              </tr>
              <tr>
                <td height="470" align="center" valign="top" bgcolor="#F6F9FE"><form name="form1" method="post" action="MyStudentList.action">
                  <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="28%" height="30" style="padding-left:20px;"> 功能导航： <a href="MyStudent.action">返回上层</a></td>
                      <td width="72%">查询：
                        <select name="Domitory_ID" id="Domitory_ID">
                          <option value="">全部寝室</option>
                          <s:iterator  value="domitorylist">
                            <option value="${Domitory_ID}">${Domitory_Name}</option>
                          </s:iterator>
                        </select>
                        <select name="SearchRow" id="SearchRow">
                          <option value="Student_Name">姓名</option>
                          <option value="Student_Username">学号</option>
                          <option value="Student_Class">班级</option>
                        </select>
                        <input name="SearchKey" type="text" class="text1" id="SearchKey">
                        <input type="submit" name="button" id="button" value="点击查询">
                        <label for="Building_ID"></label>
                        <input name="Building_ID" type="text" class="noshow" id="Building_ID" value="${Building_ID}"></td>
                    </tr>
                  </table>
                </form>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr align="center"  class="t1">
                      <td height="25" bgcolor="#D5E4F4"><strong>寝室号</strong></td>
                      <td bgcolor="#D5E4F4"><strong>姓名</strong></td>
                      <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                      <td bgcolor="#D5E4F4"><strong>班级</strong></td>
                      <td bgcolor="#D5E4F4"><strong>寝室类型</strong></td>
                      <td bgcolor="#D5E4F4"><strong>寝室人数</strong></td>
                      <td bgcolor="#D5E4F4"><strong>寝室电话</strong></td>
                      <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                    </tr>
                    <s:iterator id="aa" value="list">
                      <tr align="center">
                        <td height="25" align="center">${Domitory_Name}</td>
                        <td>${Student_Name}</td>
                        <td>${Student_Sex}</td>
                        <td>${Student_Class}</td>
                        <td>${Domitory_Type}</td>
                        <td>${Domitory_Number}</td>
                        <td>${Domitory_Tel}</td>
                        <td align="center"><a href="LogAdd.action?Student_ID=${Student_ID}">缺寝登记</a></td>
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
