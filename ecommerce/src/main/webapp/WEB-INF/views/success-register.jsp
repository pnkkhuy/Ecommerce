<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bare - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/Template/bootstrap_3.3.7/css/bootstrap.min.css' />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
      body {
        padding-top: 54px;
      }
      @media (min-width: 992px) {
        body {
          padding-top: 56px;
        }
      }
    </style>

  </head>

  <body>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h1 class="mt-5">${head_msg}</h1>
          <p class="lead text-primary">${body_msg}</p>
        	<a id="link" href="<c:url value='/'/>">Chuyển đến trang chủ.</a>
        </div>
      </div>
    </div>

  </body>
<script>
	function redirect(){
	   window.location = $('a').attr('href');
	}

	setTimeout(redirect, 5000);
</script>
</html>