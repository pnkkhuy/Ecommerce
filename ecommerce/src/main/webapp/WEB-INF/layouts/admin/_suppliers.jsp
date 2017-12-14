<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
			  <h3 class="box-title">Danh sách các nhà cung cấp</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				
			  <table id="suppliersTable" class="table table-bordered table-striped">
				<thead>
				<tr>
				  <th>Mã NCC</th>
				  <th>Tên công ty</th>
				  <th>Tên người liên hệ</th>
				  <th>Địa chỉ</th>
				  <th>SĐT</th>
				  <th>Fax</th>
				  <th>Email</th>
				  <th>Website</th>
				  <th>Ghi chú</th>
				  <th>Tình trạng</th>
				  <th>Cập nhật</th>	
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${listSupplier}" var="supplier">
						<tr>
				  			<td>${supplier.supplierID}</td>
					  		<td>${supplier.companyName}</td>
						  	<td>${supplier.contactName}</td>
						  	<td>${supplier.address}</td>
						  	<td>${supplier.phone}</td>
						  	<td>${supplier.fax}</td>
						  	<td>${supplier.email}</td>
						  	<td>${supplier.website}</td>
						  	<td>${supplier.note}</td>
						  	<td>
						  	
						  	<!-- Cài đặt đường dẫn -->
						  	<c:choose>
						  	<c:when test="${supplier.isActive == 1}">
						  		<c:set var="isActive" value="0"/>
						  	</c:when>
						  	<c:otherwise>
						  		<c:set var="isActive" value="1"/>
						  	</c:otherwise>
						  	</c:choose>						  	
							<spring:url value="/admin/suppliers/delete/${supplier.supplierID}&${isActive}" var="supplierUrlDelete"/>
							<spring:url value="/admin/suppliers/update/${supplier.supplierID}" var="supplierUrlUpdate"/>
							<!-- ./Cài đặt đường dẫn -->
						  	
						  		<c:choose>
						  			<c:when test="${supplier.isActive == 1}">
										<button class="btn btn-info btn-sm" onclick="location.href='${supplierUrlDelete}'">Bật</button>
						  			</c:when>
						  			<c:otherwise>
										<button class="btn btn-danger btn-sm" onclick="location.href='${supplierUrlDelete}'">Tắt</button>
						  			</c:otherwise>
						  		</c:choose>
						  	</td>
						  	<td><button class="btn btn-info btn-sm" onclick="location.href='${supplierUrlUpdate}'">Cập nhật</button></td>
						</tr>
					</c:forEach>           
				</tbody>
				<tfoot>
				<tr>
				  <th>Mã NCC</th>
				  <th>Tên công ty</th>
				  <th>Tên người liên hệ</th>
				  <th>Địa chỉ</th>
				  <th>SĐT</th>
				  <th>Fax</th>
				  <th>Email</th>
				  <th>Website</th>
				  <th>Ghi chú</th>
				  <th>Tình trạng</th>
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
	<spring:url value="/admin/suppliers/add" var="supplierUrlAdd"/>
	<button class="btn btn-info btn-sm" onclick="location.href='${supplierUrlAdd}'">Thêm nhà cung cấp</button>	
</div>