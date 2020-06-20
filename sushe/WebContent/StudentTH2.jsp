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
   
   if(isNull(form1.Building_ID.value)){
   alert("请选择楼宇！");
   return false;
   }
   if(isNull(form1.Domitory_ID.value)){
   alert("请选择寝室！");
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
                <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生寝室调换</td>
              </tr>
              <tr>
                <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                  <form name="form1" method="post" action="StudentTHSave.action" onSubmit="return mycheck()" >
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="30" align="right">学生学号：</td>
                        <td><s:property value='cnbean.Student_Username'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">学生姓名：</td>
                        <td><s:property value='cnbean.Student_Name'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">学生性别：</td>
                        <td><s:property value='cnbean.Student_Sex'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">目前楼宇：</td>
                        <td><s:property value='cnbean.Building_Name'/></td>
                      </tr>
                      <tr>
                        <td width="33%" height="30" align="right">目前寝室：</td>
                        <td width="67%"><s:property value='cnbean.Domitory_Name'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>调换到楼宇：</td>
                        <td><select name="Building_ID" id="Building_ID" onChange="javascript:window.location='StudentTH.action?Student_Username=<s:property value='cnbean.Student_Username'/>&BuildingID='+this.value;">
                          <option value="">请选择</option>
                          <s:iterator value="buildinglist">
                            <option value="${Building_ID}" <s:if test="BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                          </s:iterator>
                        </select></td>
                      </tr>
                      <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>调换到寝室：</td>
                        <td><select name="Domitory_ID" id="Domitory_ID">
                          <option value="">请选择</option>
                          <s:iterator value="domitorylist">
                            <option value="${Domitory_ID}">${Domitory_Name}</option>
                          </s:iterator>
                        </select></td>
                      </tr>
                      <tr>
                        <td height="30"><input name="Student_ID" type="text" class="noshow" id="Student_ID" value="<s:property value='cnbean.Student_ID'/>"></td>
                        <td><input type="submit" name="button" id="button" value="确定调换">
                          &nbsp;&nbsp;
                          <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                      </tr>
                    </table>
                  </form></td>
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
