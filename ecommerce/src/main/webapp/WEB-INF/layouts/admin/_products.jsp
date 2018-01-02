<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url value="/admin/products/add" var="productUrlAdd"/>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
			  <h3 class="box-title">Danh sách các sản phẩm</h3>			  
			</div>
			<!-- /.box-header -->
			<div class="box-body" ng-app="myProduct" ng-controller="ProductController">
				<button class="btn btn-info btn-xs" onclick="location.href='${productUrlAdd}'">Thêm sản phẩm</button>
				<hr size="30">
			  <table id="dataTable" class="table table-bordered table-striped">
				<thead>
				<tr>
				  <th>Mã sản phẩm</th>
				  <th>Tên sản phẩm</th>
				  <th>Nhà phân phối</th>
				  <th>Danh mục</th>
				  <th>Size</th>
				  <th>Màu sắc</th>
				  <th>Giảm giá</th>
				  <th>Số lượng tồn kho</th>
				  <th>Chức năng</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${listProducts}" var="product">
						<tr>
				  			<td>${product.productID}</td>
					  		<td>${product.productName}</td>
					  		<td>
					  			${product.supplier.contactName} </br>
					  			${product.supplier.companyName}					  		
					  		</td>
					  		<td>${product.category.categoryName}</td>
					  		<td>${product.size}</td>
					  		<td>${product.color}</td>
					  		<td> <small class="label label-info">{{${product.discount} | number}} %</small></td>
					  		<td>${product.unitOnStock}</td>
						  	<td>
						  	<div class="btn-group btn-group-vertical" role="group">
							  <div class="btn-group" role="group">
							  	<c:choose>
							  	<c:when test="${product.isActive == 1}">
							  		<c:set var="isActive" value="0"/>
							  		<spring:url value="/admin/products/delete/${product.productID}&${isActive}" var="productUrlDelete"/>
							  		<button class="btn btn-info btn-xs" onclick="location.href='${productUrlDelete}'">Bật</button>
							  	</c:when>
							  	<c:otherwise>
							  		<c:set var="isActive" value="1"/>
							  		<spring:url value="/admin/products/delete/${product.productID}&${isActive}" var="productUrlDelete"/>
							  		<button class="btn btn-danger btn-xs" onclick="location.href='${productUrlDelete}'">Tắt</button>
							  	</c:otherwise>
							  	</c:choose>			
							  </div>
							  <div class="btn-group" role="group">
								<spring:url value="/admin/products/update/${product.productID}" var="productUrlUpdate"/>
								<button class="btn btn-info btn-xs" onclick="location.href='${productUrlUpdate}'">Cập nhật</button>
							  </div>
						  </div>
						  	
						  				  																					
						  								  	
						  	</td>
						</tr>
					</c:forEach>           
				</tbody>
				<tfoot>
				<tr>
				  <th>Mã sản phẩm</th>
				  <th>Tên sản phẩm</th>
				  <th>Nhà phân phối</th>
				  <th>Danh mục</th>
				  <th>Size</th>
				  <th>Màu sắc</th>
				  <th>Giảm giá</th>
				  <th>Số lượng tồn kho</th>
				  <th>Chức năng</th>				  
				</tr>
				</tfoot>
			  </table>			  	
			</div>
			<!-- /.box-body -->			
	  </div>
	  <!-- /.box -->
	</div> <!-- ./ col -->
</div> <!-- ./ row -->

<div class="row">

		
	
</div>


	<script type="text/javascript">
		angular.module('myProduct', []).controller('ProductController',  ['$scope', function($scope) {		    
			
		}]);
	</script>	