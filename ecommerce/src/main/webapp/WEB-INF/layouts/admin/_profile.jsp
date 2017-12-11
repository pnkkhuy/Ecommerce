<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box box-primary">
		            <div class="box-header with-border">
		              <h3 class="box-title">Cập nhật thông tin</h3>
		            </div>
		            
		            <!-- Hiển thị thông tin cập nhật thành công hay thất bại -->
            		<c:if test="${not empty msg}">
						<div class="alert alert-${css} alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert"
				                                aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<strong>${msg}</strong>
						</div>
					</c:if>
<%-- 		            
https://docs.spring.io/spring-security/site/docs/current/reference/htmlsingle/#csrf-multipartfilter
?${_csrf.parameterName}=${_csrf.token} 
--%>
		            <spring:url value="/admin/updateprofile?${_csrf.parameterName}=${_csrf.token}" var="updateprofileUrl" />
		            
					<form:form role="form" class="form-horizontal" 
							modelAttribute="accountForm"
							accept-charset="UTF-8"
							method="POST" 
							enctype="multipart/form-data"
							action="${updateprofileUrl}">
						<div class="box-body">
						
						
							<div class="form-group">
								<label class="col-md-3 control-label">Email</label>
								<div class="col-md-9">		
									<form:input type="text" path="email" class="form-control" placeholder="email"/>
								</div>
							</div>
						
							<spring:bind path="password">	
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputPassword" class="col-md-3 control-label">Old Password</label>
								<div class="col-md-9">
									<form:input type="Password" path="password" 
												maxlength="30" name="password" 
												class="form-control" id="inputPassword"
												placeholder="Nhập mật khẩu hiện tại"/>
									<form:errors path="password" class="control-label" />
								</div>
							</div>
							</spring:bind>
					
							<spring:bind path="newpassword">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputPassword" class="col-md-3 control-label">New Password</label>
								<div class="col-md-9">
									<input type="Password" maxlength="30" 
											name="newpassword" class="form-control" 
											id="inputPassword" placeholder="Nhập mật khẩu mới"/>
									<form:errors path="newpassword" class="control-label" />		
								</div>
							</div>
							</spring:bind>
							
							<spring:bind path="confirmnewpassword">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputPassword" class="col-md-3 control-label">Confirm New Password</label>
								<div class="col-md-9">
									<input type="Password" maxlength="30" 
											name="confirmnewpassword" class="form-control" 
											id="inputPassword" placeholder="Xác nhận mật khẩu mới"/>
									<form:errors path="confirmnewpassword" class="control-label" />		
								</div>
							</div>
							</spring:bind>
							
							<div class="form-group">
								<label class="col-md-3 control-label">Role</label>
								<div class="col-md-9">
									<p class="form-control-static">${account.role}</p>
								</div>
							</div>
							
							<spring:bind path="fullName">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputFullName" class="col-md-3 control-label">Full Name</label>
								<div class="col-sm-9">
									<form:input type="text" 
												path="fullName"
												maxlength="200" name="fullName" 
												value="${account.fullName}" 
												class="form-control" id="inputFullName" 
												placeholder="Họ và tên"/>
									<form:errors path="fullName" class="control-label" />												
								</div>
							</div>
							</spring:bind>
							
							<spring:bind path="phone">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputPhone" class="col-md-3 control-label">Phone</label>
								<div class="col-sm-9">
									<form:input type="text" path="phone"
												maxlength="45" name="phone" 
												value="${account.phone}" 
												class="form-control" 
												id="inputPhone" 
												placeholder="Điện thoại"/>
									<form:errors path="phone" class="control-label" />			
								</div>
							</div>
							</spring:bind>
							
							<spring:bind path="address">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="inputAddress" class="col-md-3 control-label">Address</label>
								<div class="col-sm-9">
									<form:input type="text" path="address"
												name="address" 
												maxlength="200" 
												class="form-control" id="inputAddress" 
												placeholder="Địa chỉ"/>
									<form:errors path="address" class="control-label" />			 
								</div>
							</div>
							</spring:bind>
							

							<div class="form-group">
								<label for="exampleInputFile" class="col-md-3 control-label">Image</label>
								<div class="col-md-9">
									<label class="btn btn-default">
									    Browse <form:input path="imageForm" name="image" type="file" />
									</label>

								</div>
			                </div>
							
			                <div class="box-footer">
			                	<button type="submit" class="btn-lg btn-primary  pull-right">Submit</button>
				                <button type="submit" class="btn-lg btn-primary">Clear</button>				                	
							</div>

						</div>
					</form:form>	
				</div>			
			</div>
			<div class="col-md-2"></div>
		</div>