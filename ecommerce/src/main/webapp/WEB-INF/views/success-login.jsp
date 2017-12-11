<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sec:authorize access="hasRole('Admin')">
	<c:redirect url="/admin"></c:redirect>
</sec:authorize>

<sec:authorize access="hasRole('User')">
	<c:redirect url="/"></c:redirect>
</sec:authorize>