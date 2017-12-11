<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <?xml version="1.0" encoding="UTF-8"?>    
 <html>  
 <head>  
 	<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />  	
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<c:forEach items="${listAccounts}" var="account">
  		<tr>
  			<td>${account.fullName }</td>  			
  		</tr>
</c:forEach>
</body>
</html>
