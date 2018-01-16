<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
  <head>
    <title>ĐĂNG NHẬP</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="<c:url value="/resources/Template/bootstrap_3.3.7/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/Template/custom_css/login.css" />" rel="stylesheet"> 
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  </head>
  <body>
   <div class="container">
   <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">          
              <form id="login-form" action="<c:url value='/j_spring_security_check' />" method="POST" role="form" style="display: block;">
                <h2>ĐĂNG NHẬP</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="col-xs-6 form-group pull-left checkbox">
                  	<input id="checkbox1" type="checkbox" name="remember-me" />
                    <label for="checkbox1">Ghi nhớ đăng nhập</label>   
                  </div>
                  <div class="col-xs-6 form-group pull-right">     
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                  </div>
                  
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>

              <spring:url value="/create_account" var="linkCreateAccount" />
              
				<form:form role="form" id="register-form" action="${linkCreateAccount}" method="POST" style="display: none;" modelAttribute="accountForm" accept-charset="UTF-8">
					<h2>Đăng kí</h2>
                
	                <spring:bind path="email">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="email" path="email" 
											maxlength="200" tabindex="1" 
											class="form-control" placeholder="Email"/>
								<form:errors path="email" class="control-label" />
						</div>
					</spring:bind>
					
					<spring:bind path="newpassword">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="newpassword" 
											maxlength="30" tabindex="2" 
											class="form-control" placeholder="Mật khẩu"/>
								<form:errors path="newpassword" class="control-label" />
						</div>
					</spring:bind>
					
					<spring:bind path="confirmnewpassword">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="password" path="confirmnewpassword" 
											maxlength="30" tabindex="3" 
											class="form-control" placeholder="Xác nhận mật khẩu"/>
								<form:errors path="confirmnewpassword" class="control-label" />
						</div>
					</spring:bind>
					           
					<spring:bind path="fullName">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="fullName" 
											maxlength="200" tabindex="4" 
											class="form-control" placeholder="Họ và tên"/>
								<form:errors path="fullName" class="control-label" />
						</div>
					</spring:bind>
					
					<spring:bind path="address">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="address" 
											maxlength="200" tabindex="5" 
											class="form-control" placeholder="Địa chỉ"/>
								<form:errors path="address" class="control-label" />
						</div>
					</spring:bind>
					
					<spring:bind path="phone">	
						<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="text" path="address" 
											maxlength="45" tabindex="6" 
											class="form-control" placeholder="Điện thoại"/>
								<form:errors path="address" class="control-label" />
						</div>
					</spring:bind>					              
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" tabindex="7" class="form-control btn btn-register" value="Đăng ký">
                      </div>
                    </div>
                  </div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />                 
              </form:form>
            </div>
          </div>
          
				<div class="row">			    
				    	<c:if test="${not empty error}">
							<div class="alert alert-warning">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="alert alert-info">${msg}</div>
						</c:if>				    
				</div>
          
        </div>
        <div class="panel-heading">
          <div class="row">
            <div class="col-xs-6 tabs">
              <a href="#" class="active" id="login-form-link"><div class="login">ĐĂNG NHẬP</div></a>
            </div>
            <div class="col-xs-6 tabs">
              <a href="#" id="register-form-link"><div class="register">ĐĂNG KÝ</div></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<footer>
    <div class="container">
        <div class="col-md-10 col-md-offset-1 text-center">
            <h6 style="font-size:14px;font-weight:100;color: #fff;">Coded with <i class="fa fa-heart red" style="color: #BC0213;"></i> by <a href="http://hashif.com" style="color: #fff;" target="_blank">Hashif</a></h6>
        </div>   
    </div>
</footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="<c:url value='/resources/Template/bootstrap_3.3.7/js/bootstrap.min.js' />"></script>
	
	<script type="text/javascript">
	$(function() {
		$('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
			$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
			$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});

	</script>
  </body>
</html>