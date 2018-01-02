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
			  <table id="dataTable" class="table table-bordered table-striped">
				<thead>
				<tr>
				  <th class="col-md-1">Mã NCC</th>
				  <th class="col-md-2">Tên công ty</th>
				  <th class="col-md-3">Tên người liên hệ</th>
				  <th class="col-md-3">Địa chỉ</th>
				  <th class="col-md-1">SĐT</th>
				  <th class="col-md-1">Email</th>
				  <th class="col-md-1"></th>	
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${listSupplier}" var="supplier">
						<tr>
				  			<td class="col-md-1">${supplier.supplierID}</td>
					  		<td class="col-md-2">${supplier.companyName}</td>
						  	<td class="col-md-3">${supplier.contactName}</td>
						  	<td class="col-md-3">${supplier.address}</td>
						  	<td class="col-md-1">${supplier.phone}</td>
						  	<td class="col-md-1">${supplier.email}</td>						  	
						  	<td class="col-md-1">
						  	
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

							<div class="btn-group btn-group-vertical" role="group">
							  <div class="btn-group" role="group">
							    
		    			  		<c:choose>
						  			<c:when test="${supplier.isActive == 1}">
										<button class="btn btn-info btn-xs" onclick="location.href='${supplierUrlDelete}'">Bật</button>
						  			</c:when>
						  			<c:otherwise>
										<button class="btn btn-danger btn-xs" onclick="location.href='${supplierUrlDelete}'">Tắt</button>
						  			</c:otherwise>
						  		</c:choose>

							  </div>
							  <div class="btn-group" role="group">
							    <button class="btn btn-info btn-xs" onclick="location.href='${supplierUrlUpdate}'">Cập nhật</button>
							  </div>
							</div>
						  	
						  	</td>
						</tr>
					</c:forEach>           
				</tbody>
				<tfoot>
				<tr>
					<th class="col-md-1">Mã NCC</th>
				  	<th class="col-md-2">Tên công ty</th>
				  	<th class="col-md-3">Tên người liên hệ</th>
				  	<th class="col-md-3">Địa chỉ</th>
				  	<th class="col-md-1">SĐT</th>
				  	<th class="col-md-1">Email</th>
				  	<th class="col-md-1"></th>			  
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