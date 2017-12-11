<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<b>Admin</b>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Đăng nhập</p>
			<form action="<c:url value='/j_spring_security_check' />"
				method="post">

				<div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="Mật khẩu">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> Ghi nhớ </label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Đăng nhập</button>
					</div>
					<!-- /.col -->
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		
		    <a href="#">Quên mật khẩu?</a><br>
    		<a href="#" class="text-center">Đăng ký thành viên mới</a>
    		
		</div> <!-- /.login-box-body -->
	</div> <!-- /.login-box -->
</body>