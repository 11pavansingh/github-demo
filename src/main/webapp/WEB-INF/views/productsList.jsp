<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="container-wrapperr">
	<div class="container">
		<%@include file="/WEB-INF/views/template/header.jsp"%>
		<div class="page-header">
			<h1>All Product</h1>
			<p class="lead">Chechout all the awesome products available now</p>
		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-sucess">
					<th>Phto Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${products }" var="product">
				<tr>
					<td><img src="#" alt="image" /></td>
					<td>${product.productName}</td>
					<td>${product.productCategory }</td>
					<td>${product.productCondition }</td>
					<td>${product.productPrice }</td>
					<td><a
						href="<spring:url value="/productsList/viewProduct/${product.productId}"/>">
							<span class="glyphicon glyphicon-info-sign"></span>
					</a></td>
				</tr>
			</c:forEach>
		</table>
		<%@include file="/WEB-INF/views/template/footer.jsp"%>
	</div>
</div>