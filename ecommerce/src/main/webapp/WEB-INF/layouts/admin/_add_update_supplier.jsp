<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
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
			
			<!-- Thiết lập trỏ đến action Add hay Update -->
			<c:choose>
				<c:when test="${action == 'update'}">
					<spring:url value="/admin/suppliers/updateprocess" var="directToController"/>	
					<c:set value="Update" var="btnSubmit"/>
				</c:when>
				<c:otherwise>
					<spring:url value="/admin/suppliers/addprocess" var="directToController" />
					<c:set value="Add" var="btnSubmit"/>
				</c:otherwise>
			</c:choose>
            
			<form:form role="form" class="form-horizontal" 
					modelAttribute="supplierForm"
					accept-charset="UTF-8"
					method="POST" 
					action="${directToController}">
				<div class="box-body">
					
					<spring:bind path="supplierID">
						<form:hidden path="supplierID"/>
					</spring:bind>
					
					<spring:bind path="companyName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputCompanyName" class="col-md-3 control-label">Tên công ty</label>
						<div class="col-sm-9">						
							<form:input type="text" 
										path="companyName"
										maxlength="200" name="companyName" 
										class="form-control"/>
							<form:errors path="companyName" class="control-label" />												
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="contactName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputContactName" class="col-md-3 control-label">Họ và tên người liên lạc</label>
						<div class="col-sm-9">
							<form:input type="text" path="contactName"
										maxlength="200" name="contactName"  
										class="form-control"/>
							<form:errors path="contactName" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="address">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputAddress" class="col-md-3 control-label">Địa chỉ</label>
						<div class="col-sm-9">
							<form:input type="text" path="address"
										maxlength="200" name="address"  
										class="form-control"/>
							<form:errors path="address" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="phone">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputPhone" class="col-md-3 control-label">Điện thoại</label>
						<div class="col-sm-9">
							<form:input type="text" path="phone"
										maxlength="45" name="phone"  
										class="form-control" />
							<form:errors path="phone" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="fax">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputFax" class="col-md-3 control-label">Fax</label>
						<div class="col-sm-9">
							<form:input type="text" path="fax"
										maxlength="200" name="fax"  
										class="form-control"/>
							<form:errors path="fax" class="control-label" />			
						</div>
					</div>
					</spring:bind>

					<spring:bind path="Email">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputEmail" class="col-md-3 control-label">Email</label>
						<div class="col-sm-9">
							<form:input type="text" path="email"
										maxlength="200" name="email"  
										class="form-control"/>
							<form:errors path="email" class="control-label" />			
						</div>
					</div>
					</spring:bind>		
					
					<spring:bind path="website">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputWebsite" class="col-md-3 control-label">Website</label>
						<div class="col-sm-9">
							<form:input type="text" path="website"
										maxlength="200" name="website"  
										class="form-control"/>
							<form:errors path="website" class="control-label" />			
						</div>
					</div>
					</spring:bind>							

					<spring:bind path="note">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputNote" class="col-md-3 control-label">Ghi chú</label>
						<div class="col-sm-9">
							<form:input type="text" path="note"
										maxlength="200" name="note"  
										class="form-control" />
							<form:errors path="email" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
	                <div class="box-footer">	                		                	
	                	<button type="submit" class="btn-small btn-info pull-right">${btnSubmit}</button>
		                <button type="button" class="btn-small btn-info">Clear</button>				                	
					</div>

				</div>
			</form:form>	
		</div>			
	</div>
	<div class="col-md-2"></div>
</div>