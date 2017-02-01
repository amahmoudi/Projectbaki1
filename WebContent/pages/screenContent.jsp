<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<sj:head locale="FR" jquerytheme="cupertino" />
<script src="js/screenContent.js" type="text/javascript"></script>
<link rel="stylesheet" href="style/screen.css" rel="stylesheet" type="text/css"/>
<sj:tabbedpanel id="mytabs" cssClass="tab_contents_header2" useSelectedTabCookie="true" requiredposition="true">
      <sj:tab id="tab1" target="tone" label="Tab One"/>
       <sj:tab id="tab2" target="tow" label="Tab tow"/>
      <div id="tone">
 <s:url var="remoteurl" action="jsontable"/>
    <sjg:grid
        id="gridtable"
        caption="Customer Examples"
        dataType="json"
        href="%{remoteurl}"
        pager="true"
        gridModel="gridModel"
        rowList="10,15,20"
        rowNum="15"
        rownumbers="true"
    >
        <sjg:gridColumn name="id" index="id" title="ID" formatter="integer" sortable="false"/>
        <sjg:gridColumn name="name" index="name" title="Name" sortable="true"/>
        <sjg:gridColumn name="country" index="country" title="Country" sortable="false"/>
        <sjg:gridColumn name="city" index="city" title="City" sortable="false"/>
        <sjg:gridColumn name="creditLimit" index="creditLimit" title="Credit Limit" formatter="currency" sortable="false"/>
    </sjg:grid>
      </div>
      <div id="tow"> </div>
    </sj:tabbedpanel>
