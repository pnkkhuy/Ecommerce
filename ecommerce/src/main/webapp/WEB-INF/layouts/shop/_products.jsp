<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url value="/resources/Template/web/" var="linkToWeb"/>

<c:forEach items="${listProducts}" var="product" varStatus="loop">

<c:if test="${loop.index % 4 == 0 && loop.index == 0}">
	<div class="w3ls_w3l_banner_nav_right_grid">
	<h3>${categoryName}</h3>	
</c:if>
		<div class="col-md-3 w3ls_w3l_banner_left">
			<div class="hover14 column">
				<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
					<div class="agile_top_brand_left_grid_pos">
						<img src="${linkToWeb}/images/offer.png" alt=" " class="img-responsive" />
					</div>
					<div class="agile_top_brand_left_grid1">
						<figure>
							<div class="snipcart-item block">
								<div class="snipcart-thumb">
									<a href="single.html"><img src="${linkToWeb}/images/5.png" alt=" "
										class="img-responsive" /></a>
									<p>${product.productName}</p>
									<h4>
										${product.unitPrice}
									</h4>
								</div>
								<div class="snipcart-details">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> 
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="business" value=" " /> 
											<input type="hidden" name="item_name" value="${product.productName}" /> 
											<input type="hidden" name="amount" value="${product.unitPrice}" /> 
											<input type="hidden" name="discount_amount" value="0" /> 
											<input type="hidden" name="currency_code" value="VND" /> 
											<input type="hidden" name="return" value=" " /> 
											<input type="hidden" name="cancel_return" value=" " /> 
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>
							</div>
						</figure>
					</div>
				</div>
			</div>
		</div>
<c:if test="${loop.index % 4 == 0 && loop.index != 0}">
		<div class="clearfix"></div>
	</div>
	<div class="w3ls_w3l_banner_nav_right_grid">
</c:if>	
		<div class="clearfix"></div>
	</div>
</c:forEach>