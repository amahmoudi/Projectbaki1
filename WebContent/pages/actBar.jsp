<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<sj:head jqueryui="true" jquerytheme="css_xhtml"/>
<link rel="stylesheet" href="style/actBar.css" rel="stylesheet" type="text/css"/>
<s:form id="actBar" name="actBar" action="actBar"  method="post" enctype="multipart/form-data">
<s:div id="mainActBar" class="mainActBar" cssStyle="clear:both;width: 75%;">
	<fieldset>
		<legend>AJAX Form</legend>
		<s:div class="type-text" cssStyle="float:left;">
			<label for="language">Language: </label>
			<s:url id="remoteurl" action="loadListCategory" />
			<sj:select href="%{remoteurl}" id="language"
				onChangeTopics="reloadsecondlist" name="language"
				list="languageObjList" listKey="myKey" listValue="myValue"
				emptyOption="true" headerKey="-1"
				headerValue="Please Select a Language" />
		</s:div>
		<s:div class="type-text" cssStyle="float:left;">
			<label for="echo">Framework: </label>
			<s:url id="remoteurl" action="loadListCategory" />
			<sj:select href="%{remoteurl}" id="selectWithReloadTopic"
				formIds="formSelectReload" reloadTopics="reloadsecondlist"
				name="echo" list="reloadList" emptyOption="true" headerKey="-1"
				headerValue="Please Select a Framework" />
		</s:div>
		<s:div class="actBarcheckBox" cssStyle="float:left;">
			<sj:checkboxlist name="mycheckBox" id="checkBoxId" list="{'1','2','3'}" value="1">
			
			</sj:checkboxlist>
		</s:div>
		<s:div class="actBarRadio" cssStyle="float:left;">
			<sj:radio name="myRadio" id="radioId" list="{'1','2','3'}" value="1">
			
			</sj:radio>
		</s:div>
		<s:div class="type-button">
			<sj:submit id="submitFormSelectReload" targets="result"
				value="AJAX Submit" indicator="indicator" button="true" onclick="return report();"/>
			<img id="indicator" src="images/indicator.gif" alt="Loading..."
				style="display: none" />
		</s:div>
	</fieldset>
</s:div>
</s:form>
