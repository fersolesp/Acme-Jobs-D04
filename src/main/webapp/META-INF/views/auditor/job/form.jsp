<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="auditor.auditRecord.form.label.reference" path="reference"/>
	<acme:form-textbox code="auditor.auditRecord.form.label.status" path="status"/>
	<acme:form-textbox code="auditor.auditRecord.form.label.title" path="title"/>
	<acme:form-moment code="auditor.auditRecord.form.label.deadline" path="deadline"/>
	<acme:form-money code="auditor.auditRecord.form.label.salary" path="salary"/>
	<acme:form-url code="auditor.auditRecord.form.label.moreInfo" path="moreInfo"/>
	
	<acme:form-return code="auditor.auditRecord.form.button.return"/>
</acme:form>