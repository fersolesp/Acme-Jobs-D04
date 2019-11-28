<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-moment code="authenticated.messageThread.form.label.moment" path="moment"/>
	<acme:form-textbox code="authenticated.messageThread.list.label.title" path="title"/>
	<acme:form-integer code="authenticated.messageThread.list.label.thread.id" path="id" />
		
	<acme:form-return code="authenticated.messageThread.form.button.return"/>
</acme:form>

<%-- 	<a href="authenticated/message/list?id=${id}">jajaja</a> --%>

