<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.util.*,kaoqin.packa.*"%>
<%@page errorPage="error.jsp"%>
<jsp:useBean id="budget_db" scope="session" class="kaoqin.packa.budgetdb"></jsp:useBean>
<jsp:useBean id="sum_db" scope="session" class="kaoqin.packa.sumdb"></jsp:useBean>
<script type="text/javascript">
function isInteger(str){
if(str==""){return true;}else{
var regu = /^[-]{0,1}[0-9]{1,}$/;
return regu.test(str);}
}
function check(){
         if(document.forms[0].elements['device1']!=null){
            if (!isInteger(document.product.device1.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['device2']!=null){
            if (!isInteger(document.product.device2.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['device3']!=null){
            if (!isInteger(document.product.device3.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['device4']!=null){
            if (!isInteger(document.product.device4.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['material']!=null){
            if (!isInteger(document.product.material.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['experiment']!=null){
            if (!isInteger(document.product.experiment.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['power']!=null){
            if (!isInteger(document.product.power.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['travel']!=null){
            if (!isInteger(document.product.travel.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['meeting']!=null){
            if (!isInteger(document.product.meeting.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['international']!=null){
            if (!isInteger(document.product.international.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['publish']!=null){
            if (!isInteger(document.product.publish.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['cooperate']!=null){
            if (!isInteger(document.product.cooperate.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['expert']!=null){
            if (!isInteger(document.product.expert.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['labour']!=null){
            if (!isInteger(document.product.labour.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['manage']!=null){
            if (!isInteger(document.product.manage.value)){
               alert("请输入整数!");
               return false;
            }
         }
          if(document.forms[0].elements['multi']!=null){
            if (!isInteger(document.product.multi.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['jixiao']!=null){
            if (!isInteger(document.product.jixiao.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['other1']!=null){
            if (!isInteger(document.product.other1.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['other2']!=null){
            if (!isInteger(document.product.other2.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['transfer']!=null){
            if (!isInteger(document.product.transfer.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base1']!=null){
            if (!isInteger(document.product.base1.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base2']!=null){
            if (!isInteger(document.product.base2.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base3']!=null){
            if (!isInteger(document.product.base3.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base4']!=null){
            if (!isInteger(document.product.base4.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base5']!=null){
            if (!isInteger(document.product.base5.value)){
               alert("请输入整数!");
               return false;
            }
         }
         if(document.forms[0].elements['base6']!=null){
            if (!isInteger(document.product.base6.value)){
               alert("请输入整数!");
               return false;
            }
         }
         return true;          
}
</script>
<script type="text/javascript" src="../js/productmanage.js"></script>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/default1.css" rel="stylesheet" type="text/css">
</head>
<BODY>
<%@include file="head.inc"%>
<form name="product" method="post" action="addbudgetpro.jsp">
<table width="85%" border=0 cellPadding=0 cellSpacing=0 align="center">
  <%
      String budget_id=request.getParameter("budget_id");
      String templet=request.getParameter("templet");
      ArrayList iterlist = (ArrayList) budget_db.getonebudget(budget_id);
      budgetdetail book = (budgetdetail) iterlist.get(0);
      String subject_id,islock;
      subject_id=request.getParameter("subject_id");
      ArrayList iterlist1 = (ArrayList) sum_db.getonesum(subject_id);
      sumdetail book1 = (sumdetail) iterlist1.get(0);
      islock=book1.getLocked();
      if(islock.equals("0")){
      String budget_year=book.getBudget_year();
  %>
 <tr align="center">
    <td height="25">
      <input type="hidden" name="budget_id" value="<%=budget_id%>">
      <input type="hidden" name="subject_id" value="<%=subject_id%>">
      <input type="hidden" name="operatename" value="edit"><br>
     <STRONG>修改课题预算（单位:元）</STRONG>
     <HR style="BORDER-TOP: #aaaaaa 1px solid" SIZE=0>
    </td>
  </tr>
  <tr><td align="center">
    <table align="center">
    <tr>
        <td height="30">年份</td>
        <td><select name="budget_year">
        <%for (int i=2014;i<2051;i++ ) {
        %>
          <option value="<%=i%>" <%if(budget_year.equals(String.valueOf(i)))out.print("selected");%>><%=i%></option>
        <%}        %>
        </select></td>
      </tr>
    <%
    if(templet.equals("0")){
     %>
      <tr>
        <td height="30">购置设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">试制设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("1")){
     %>
      <tr>
        <td height="30">购置设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">研制设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工及计算分析费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">综合集成与调控费</td>
        <td><input type="text" name="multi" size="15" maxlength="10" value="<%if(!book.getMulti().equals("0"))out.print(book.getMulti());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("2")){
     %>
     <tr>
        <td height="30">购置设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">试制设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">绩效支出</td>
        <td><input type="text" name="jixiao" size="15" maxlength="10" value="<%if(!book.getJixiao().equals("0"))out.print(book.getJixiao());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他间接费用</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("3")){
     %>
     <tr>
        <td height="30">测试/计算/分析费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">能源/动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费/差旅费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版物/文献/信息传播事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他科研业务费</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">原材料/试剂/药品购置费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他试验材料费</td>
        <td><input type="text" name="other2" size="15" maxlength="10" value="<%if(!book.getOther2().equals("0"))out.print(book.getOther2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">仪器设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">实验室改造费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">协作费</td>
        <td><input type="text" name="cooperate" size="15" maxlength="10" value="<%if(!book.getCooperate().equals("0"))out.print(book.getCooperate());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">项目组成员出国合作交流</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">境外专家来华合作交流</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("4")){
     %>
      <tr>
        <td height="30">设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-房屋建筑物购建</td>
        <td><input type="text" name="base1" size="15" maxlength="10" value="<%if(!book.getBase1().equals("0"))out.print(book.getBase1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-专用设备购置</td>
        <td><input type="text" name="base2" size="15" maxlength="10" value="<%if(!book.getBase2().equals("0"))out.print(book.getBase2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-基本设施建设</td>
        <td><input type="text" name="base3" size="15" maxlength="10" value="<%if(!book.getBase3().equals("0"))out.print(book.getBase3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-大型修缮</td>
        <td><input type="text" name="base4" size="15" maxlength="10" value="<%if(!book.getBase4().equals("0"))out.print(book.getBase4());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-信息网络建设</td>
        <td><input type="text" name="base5" size="15" maxlength="10" value="<%if(!book.getBase5().equals("0"))out.print(book.getBase5());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">基本建设费-其他基本建设支出</td>
        <td><input type="text" name="base6" size="15" maxlength="10" value="<%if(!book.getBase6().equals("0"))out.print(book.getBase6());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他-间接费用</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他-不可预见费</td>
        <td><input type="text" name="other2" size="15" maxlength="10" value="<%if(!book.getOther2().equals("0"))out.print(book.getOther2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">中间试验（制）费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("5")){
     %>
     <tr>
        <td height="30">设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工及计算分析费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("6")){
     %>
     <input type="hidden" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>" class="noedit" readonly="readonly">
      <tr>
        <td height="30">设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">人员劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他费</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("7")){
     %> 
     <tr>
        <td height="30">购置设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">试制设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
       <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>      
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">管理费</td>
        <td><input type="text" name="manage" size="15" maxlength="10" value="<%if(!book.getManage().equals("0"))out.print(book.getManage());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他费</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转拨经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
      <%
    }else if(templet.equals("8")){
     %>
      <tr>
        <td height="30">设备购置费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备试制费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">会议费</td>
        <td><input type="text" name="meeting" size="15" maxlength="10" value="<%if(!book.getMeeting().equals("0"))out.print(book.getMeeting());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">国际合作与交流费</td>
        <td><input type="text" name="international" size="15" maxlength="10" value="<%if(!book.getInternational().equals("0"))out.print(book.getInternational());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他支出</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
    <%}else if(templet.equals("9")){
     %>
     <tr>
        <td height="30">购置设备费</td>
        <td><input type="text" name="device1" size="15" maxlength="10" value="<%if(!book.getDevice1().equals("0"))out.print(book.getDevice1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">试制设备费</td>
        <td><input type="text" name="device2" size="15" maxlength="10" value="<%if(!book.getDevice2().equals("0"))out.print(book.getDevice2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">设备改造与租赁费</td>
        <td><input type="text" name="device3" size="15" maxlength="10" value="<%if(!book.getDevice3().equals("0"))out.print(book.getDevice3());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">材料费</td>
        <td><input type="text" name="material" size="15" maxlength="10" value="<%if(!book.getMaterial().equals("0"))out.print(book.getMaterial());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">测试化验加工费</td>
        <td><input type="text" name="experiment" size="15" maxlength="10" value="<%if(!book.getExperiment().equals("0"))out.print(book.getExperiment());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">燃料动力费</td>
        <td><input type="text" name="power" size="15" maxlength="10" value="<%if(!book.getPower().equals("0"))out.print(book.getPower());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">差旅费/会议费/国际合作与交流费</td>
        <td><input type="text" name="travel" size="15" maxlength="10" value="<%if(!book.getTravel().equals("0"))out.print(book.getTravel());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">出版/文献/信息传播/知识产权事务费</td>
        <td><input type="text" name="publish" size="15" maxlength="10" value="<%if(!book.getPublish().equals("0"))out.print(book.getPublish());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">劳务费</td>
        <td><input type="text" name="labour" size="15" maxlength="10" value="<%if(!book.getLabour().equals("0"))out.print(book.getLabour());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">专家咨询费</td>
        <td><input type="text" name="expert" size="15" maxlength="10" value="<%if(!book.getExpert().equals("0"))out.print(book.getExpert());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">其他支出</td>
        <td><input type="text" name="other2" size="15" maxlength="10" value="<%if(!book.getOther2().equals("0"))out.print(book.getOther2());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">间接费用</td>
        <td><input type="text" name="other1" size="15" maxlength="10" value="<%if(!book.getOther1().equals("0"))out.print(book.getOther1());%>">(整数)</td>
      </tr>
      <tr>
        <td height="30">转出经费</td>
        <td><input type="text" name="transfer" size="15" maxlength="10" value="<%if(!book.getTransfer().equals("0"))out.print(book.getTransfer());%>">(整数)</td>
      </tr>
     <%} %>
    </table>
  </td></tr>
  <tr><td align="center" height="30">
          <input type="submit" value="提交" name="tijiao" onclick="return check();">
          <input type="button" value="返回" onclick="history.go(-1)">
  </td>
  </tr>
  <%if(templet.equals("9")){%>
  <tr><td>1、将课题经费预算全部填写在课题开始的年度。</td></tr><tr><td>
      2、第1-12项为高能所使用的预算，第13项为转出外单位使用的预算，包括直接费和间接费。
      </td></tr><tr><td>3、金额单位为元，精确到百位。</td></tr>
  <%} %>
</table>
</form>
<%
 }else{
     response.sendRedirect("nomonth.jsp");
  }
%>
<%@include file="foot.inc"%>
</body>
</html>
