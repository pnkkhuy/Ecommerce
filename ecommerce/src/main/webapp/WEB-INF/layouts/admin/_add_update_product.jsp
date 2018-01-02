<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
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
					<spring:url value="/admin/products/updateprocess" var="directToController"/>	
					<c:set value="Update" var="btnSubmit"/>
				</c:when>
				<c:otherwise>
					<spring:url value="/admin/products/addprocess" var="directToController" />
					<c:set value="Add" var="btnSubmit"/>
				</c:otherwise>
			</c:choose>
            
			<form:form role="form" class="form-horizontal" 
					modelAttribute="productForm"
					enctype="multipart/form-data"
					accept-charset="UTF-8"
					method="POST" 
					action="${directToController}">
				<div class="box-body" ng-app="myProduct" ng-controller="ProductController">
					
					<spring:bind path="productID">
						<form:hidden path="productID"/>
					</spring:bind>
					
					<spring:bind path="productName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputProductName" class="col-sm-2 control-label">Tên sản phẩm</label>
						<div class="col-sm-10">						
							<form:input type="text"
										path="productName"
										maxlength="200" name="productName" 
										class="form-control" id="productName" 
										ng-model="productName"
										value="${productForm.productName}"/>
							<form:errors path="productName" class="control-label" />												
						</div>
					</div>
					</spring:bind>
					
					<div class="form-group">
						<label for="inputSupplierID" class="col-sm-2 control-label">Nhà cung cấp</label>
						<div class="col-sm-10">
							<form:select class="form-control" path="supplier.supplierID" ng-model="supplierID">
								<c:forEach items="${listSuppliers}" var="supplier">
									<form:option value="${supplier.supplierID}">${supplier.companyName} - ${supplier.contactName}</form:option>
								</c:forEach>
							</form:select>
						</div>
					</div>				
					
					<div class="form-group">
						<label for="inputCategoryID" class="col-sm-2 control-label">Danh mục</label>
						<div class="col-sm-10">
							<form:select class="form-control" path="category.categoryID" ng-model="categoryID">
								<c:forEach items="${listCategories}" var="category">
									<form:option value="${category.categoryID}">${category.categoryName}</form:option>
								</c:forEach>
							</form:select>
						</div>
					</div>
					
<%-- 					<spring:bind path="quantityPerUnit"> --%>
<%-- 					<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 						<label for="inputQuantityPerUnit" class="col-sm-2 control-label">Số lượng đơn lẻ/ đơn vị</label> -->
<!-- 						<div class="col-sm-10"> -->
<%-- 							<form:input type="text" path="productDescription" --%>
<%-- 										maxlength="1000" name="productDescription"   --%>
<%-- 										class="form-control"  --%>
<%-- 										id="productDescription"/> --%>
<%-- 							<form:errors path="productDescription" class="control-label" />			 --%>
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 					</spring:bind> --%>
							
		
					<spring:bind path="unitPrice">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputUnitPrice" class="col-sm-2 control-label">Giá tiền 1 SP</label>
						<div class="col-sm-8">
							<form:input type="number" path="unitPrice"  min="0" step="500"
										maxlength="17" name="unitPrice"  
										class="form-control" 
										id="unitPrice"
										ng-model="unitPrice"/>
							<form:errors path="unitPrice" class="control-label" />			
						</div>
						<div class="col-sm-2">
    						<small class="label label-info">{{unitPrice | number}} VNĐ</small>
    					</div>
					</div>
					</spring:bind>
					

					
					<spring:bind path="availableSize">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputAvailableSize" class="col-sm-2 control-label">Size có sẵn</label>
						<div class="col-sm-10">
							<form:input type="text" path="availableSize"
										maxlength="200" name="availableSize"  
										class="form-control" 
										id="availableSize" ng-model="availableSize"/>
							<form:errors path="availableSize" class="control-label" />
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="availableColors">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputAvailableColors" class="col-sm-2 control-label">Màu có sẵn</label>
						<div class="col-sm-10">
							<form:input type="text" path="availableColors"
										maxlength="200" name="color"  
										class="form-control" 
										id="unitPrice" ng-model="availableColors"/>
							<form:errors path="availableColors" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="size">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputSize" class="col-sm-2 control-label">Size</label>
						<div class="col-sm-10">
							<form:input type="text" path="size"
										maxlength="200" name="size"  
										class="form-control" 
										id="unitPrice" ng-model="size"/>
							<form:errors path="size" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="color">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputColor" class="col-sm-2 control-label">Màu</label>
						<div class="col-sm-10">
							<form:input type="text" path="color"
										maxlength="200" name="color"  
										class="form-control" 
										id="color" ng-model="color"/>
							<form:errors path="color" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
					<spring:bind path="discount">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputDiscount" class="col-sm-2 control-label">Giảm giá</label>
						<div class="col-sm-8">
							<form:input type="number" path="discount" min="0" step="1" max="100"
										maxlength="17" name="discount"  
										class="form-control" 
										id="discount" ng-model="discount"/>
							<form:errors path="discount" class="control-label" />			
						</div>
						<div class="col-sm-2">
    						<small class="label label-info">{{discount | number}} %</small>
    					</div>
					</div>					
					</spring:bind>
					
					<spring:bind path="unitWeight">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputUnitWeight" class="col-sm-2 control-label">Cân nặng sản phẩm</label>
						<div class="col-sm-8">
							<form:input type="number" path="unitWeight" min="0"
										maxlength="45" name="unitWeight"  
										class="form-control" 
										id="unitWeight" ng-model="unitWeight"/>
							<form:errors path="unitWeight" class="control-label" />			
						</div>
						<div class="col-sm-2">
							<small class="label label-info">{{unitWeight | number}} gram</small>
						</div>
					</div>
					</spring:bind>

					<spring:bind path="unitOnStock">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputUnitOnStock" class="col-sm-2 control-label">Số lượng sản phẩm trong kho</label>
						<div class="col-sm-8">
							<form:input type="number" path="unitOnStock" min="0"
										maxlength="45" name="unitOnStock"  
										class="form-control" 
										id="unitOnStock" ng-model="unitOnStock"/>
							<form:errors path="unitOnStock" class="control-label" />			
						</div>
						<div class="col-sm-2">
							<small class="label label-info">{{unitOnStock | number}} cái</small>
						</div>
					</div>
					</spring:bind>
					
					
<%-- 					<spring:bind path="unitOnOrder"> --%>
<%-- 					<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 						<label for="inputUnitOnOrder" class="col-sm-2 control-label">Số lượng sản phẩm đặt hàng</label> -->
<!-- 						<div class="col-sm-8"> -->
<%-- 							<form:input type="number" path="unitOnOrder" min="0" --%>
<%-- 										maxlength="45" name="unitOnOrder"   --%>
<%-- 										class="form-control"  --%>
<%-- 										id="unitOnOrder" ng-model="unitOnOrder"/> --%>
<%-- 							<form:errors path="unitOnOrder" class="control-label" />			 --%>
<!-- 						</div> -->
<!-- 						<div class="col-sm-2"> -->
<!-- 							<small class="label label-info">{{unitOnOrder | number}} cái</small> -->
<!-- 						</div>						 -->
<!-- 					</div> -->
<%-- 					</spring:bind> --%>
					
					<spring:bind path="productDescription">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<label for="inputProductDescription" class="col-sm-2 control-label">Mô tả sản phẩm</label>
						<div class="col-sm-9">							   						
							<form:textarea type="text" path="productDescription"
										rows="10" cols="80"
										maxlength="1000" name="editor1"  
										class="form-control" 
										id="editor1"/>
							<form:errors path="productDescription" class="control-label" />			
						</div>
					</div>
					</spring:bind>
					
<!-- 					<div class="form-group"> -->
<!-- 							<label for="exampleInputFile" class="col-sm-2 control-label">Hình ảnh</label> -->
<!-- 							<div class="col-md-9"> -->
<%-- 							    <form:input name="image"  --%>
<%-- 							    			path="listMultiPartFileImage"  --%>
<%-- 							    			type="file" --%>
<%-- 							    			id="exampleInputFile"  --%>
<%-- 							    			multiple="multiple" />					 --%>
<!-- 							</div> -->
<!-- 	                </div> -->
					
					
								
	                <div class="box-footer">	                		                	
	                	<button type="submit" class="btn btn-info pull-right">${btnSubmit}</button>
		                <button type="button" ng-click="reset()" class="btn btn-info">Clear</button>				                	
					</div>
				</div>
			</form:form>					
		</div>			
	</div>
	<div class="col-md-1"></div>
</div>

            
	<script type="text/javascript">
		angular.module('myProduct', []).controller('ProductController',  ['$scope', function($scope) {
			
			$scope.productName = 		'${productForm.productName}';
			$scope.supplierID = 		'${productForm.supplier.supplierID}';
			$scope.categoryID = 		'${productForm.category.categoryID}';
			$scope.unitPrice = 			Number('${productForm.unitPrice}');
			$scope.availableSize = 		'${productForm.availableSize}';
			$scope.availableColors = 	'${productForm.availableColors}';
			$scope.size = 				'${productForm.size}';
			$scope.color = 				'${productForm.color}';
			$scope.discount =			Number('${productForm.discount}');
			$scope.unitWeight =			Number('${productForm.unitWeight}');
			$scope.unitOnStock = 		Number('${productForm.unitOnStock}');
			var html = $('#editor1').val();			
			
		    $scope.leader = {};
// 		    angular.copy(productForm, $scope.leader);
			    
		    $scope.reset = function() {
			    console.log("button clicked..");
			      // Example with 1 argument
	// 		      $scope.productForm = angular.copy($scope.leader);
			      
				$scope.productName = 		'${productForm.productName}';
				$scope.supplierID = 		'${productForm.supplier.supplierID}';
				$scope.categoryID = 		'${productForm.category.categoryID}';
				$scope.unitPrice = 			Number('${productForm.unitPrice}');
				$scope.availableSize = 		'${productForm.availableSize}';
				$scope.availableColors = 	'${productForm.availableColors}';
				$scope.size = 				'${productForm.size}';
				$scope.color = 				'${productForm.color}';
				$scope.discount =			Number('${productForm.discount}');
				$scope.unitWeight =			Number('${productForm.unitWeight}');
				$scope.unitOnStock = 		Number('${productForm.unitOnStock}');
				CKEDITOR.instances['editor1'].setData(html);
		    };

// 		    $scope.reset();
		    
		}]);
	</script>	