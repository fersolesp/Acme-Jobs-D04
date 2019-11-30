<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="authenticated.authenticated.form.label.username" path="userAccount.username"/>
	<acme:form-textbox code="authenticated.authenticated.form.label.name" path="userAccount.identity.name"/>
	<acme:form-textbox code="authenticated.authenticated.form.label.surname" path="userAccount.identity.surname"/>
	
	<acme:form-return code="authenticated.authenticated.form.button.return"/>
</acme:form>
