<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="box box-primary">
            <div class="box-header with-border">
<%--             <tiles:getAsString name="title" /> --%>
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
					<spring:url value="/admin/category/updateprocess" var="directToController"/>	
					<c:set value="Update" var="btnSubmit"/>
				</c:when>
				<c:otherwise>
					<spring:url value="/admin/category/addprocess" var="directToController" />
					<c:set value="Add" var="btnSubmit"/>
				</c:otherwise>
			</c:choose>
            <spring:url value="/admin/add" var="updateprofileUrl" />
            
			<form:form role="form" class="form-horizontal" 
					modelAttribute="categoryForm"
					accept-charset="UTF-8"
					method="POST" 
					action="${directToController}">
				<div class="box-body">
					
					<spring:bind path="categoryID">
						<form:hidden path="categoryID"/>
					</spring:bind>
					
					<spring:bind path="categoryName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputFullName" class="col-md-3 control-label">Tên danh mục</label>
						<div class="col-sm-9">						
							<form:input type="text" 
										path="categoryName"
										maxlength="200" name="categoryName" 
										class="form-control" id="categoryName" 
										placeholder="Tên danh mục"/>
							<form:errors path="categoryName" class="control-label" />												
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="description">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="description" class="col-md-3 control-label">Mô tả</label>
						<div class="col-sm-9">
							<form:input type="text" path="description"
										maxlength="200" name="description"  
										class="form-control" 
										id="description" 
										placeholder="Mô tả"/>
							<form:errors path="description" class="control-label" />			
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