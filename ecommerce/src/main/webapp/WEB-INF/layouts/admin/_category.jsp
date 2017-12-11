<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
			  <h3 class="box-title">Danh sách các danh mục</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
			  <table id="categoryTable" class="table table-bordered table-striped">
				<thead>
				<tr>
				  <th>Mã danh mục</th>
				  <th>Tên danh mục</th>
				  <th>Mô tả</th>
				  <th>Trạng thái</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${listCategory}" var="category">
						<tr>
				  			<td>${category.categoryID}</td>
					  		<td>${category.categoryName}</td>
						  	<td>${category.description}</td>
						  	<td>
						  		<c:choose>
						  			<c:when test="${category.isActive == 1}">
						  				<span class="label label-success">Đang bật</span>
						  			</c:when>
						  			<c:otherwise>
						  				<span class="label label-danger">Không hoạt động</span>
						  			</c:otherwise>
						  		</c:choose>
						  	</td>
						</tr>
					</c:forEach>           
				</tbody>
				<tfoot>
				<tr>
				  <th>Mã danh mục</th>
				  <th>Tên danh mục</th>
				  <th>Mô tả</th>
				  <th>Trạng thái</th>
				</tr>
				</tfoot>
			  </table>
			</div>
			<!-- /.box-body -->
	  </div>
	  <!-- /.box -->
	</div> <!-- ./ col -->
</div> <!-- ./ row -->

