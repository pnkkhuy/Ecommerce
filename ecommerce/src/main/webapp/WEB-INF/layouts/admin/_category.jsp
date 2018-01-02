<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
			  <h3 class="box-title">Danh sách các danh mục</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				
			  <table id="dataTable" class="table table-bordered table-striped">
				<thead>
				<tr>
				  <th>Mã danh mục</th>
				  <th>Tên danh mục</th>
				  <th>Mô tả</th>
				  <th>Trạng thái</th>
				  <th>Cập nhật</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${listCategory}" var="category">
						<tr>
				  			<td>${category.categoryID}</td>
					  		<td>${category.categoryName}</td>
						  	<td>${category.description}</td>
						  	<td>
						  	
						  	<!-- Cài đặt đường dẫn -->
						  	<c:choose>
						  	<c:when test="${category.isActive == 1}">
						  		<c:set var="isActive" value="0"/>
						  	</c:when>
						  	<c:otherwise>
						  		<c:set var="isActive" value="1"/>
						  	</c:otherwise>
						  	</c:choose>						  	
							<spring:url value="/admin/category/delete/${category.categoryID}&${isActive}" var="categoryUrlDelete"/>
							<spring:url value="/admin/category/update/${category.categoryID}" var="categoryUrlUpdate"/>
							<!-- ./Cài đặt đường dẫn -->
						  	
						  		<c:choose>
						  			<c:when test="${category.isActive == 1}">
										<button class="btn btn-info btn-xs" onclick="location.href='${categoryUrlDelete}'">Bật</button>
						  			</c:when>
						  			<c:otherwise>
										<button class="btn btn-danger btn-xs" onclick="location.href='${categoryUrlDelete}'">Tắt</button>
						  			</c:otherwise>
						  		</c:choose>
						  	</td>
						  	<td><button class="btn btn-info btn-xs" onclick="location.href='${categoryUrlUpdate}'">Cập nhật</button></td>
						</tr>
					</c:forEach>           
				</tbody>
				<tfoot>
				<tr>
				  <th>Mã danh mục</th>
				  <th>Tên danh mục</th>
				  <th>Mô tả</th>
				  <th>Trạng thái</th>
				  <th>Cập nhật</th>				  
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

		<spring:url value="/admin/category/add" var="categoryUrlAdd"/>
		<button class="btn btn-info btn-sm" onclick="location.href='${categoryUrlAdd}'">Thêm danh mục</button>
	
</div>