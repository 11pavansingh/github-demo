<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container-wrapperr">
	<div class="container">
<%@include file="/WEB-INF/views/template/header.jsp" %>
		<div class="page-header">
		<h1>Product Detail</h1>
		<p class="lead">Here is the detail information of the product</p>
		</div>
	</div>
	
	<div class="container">
		<div class = "row">
			<div class ="col-md-5">
				<img src="#" alt="image"/>
			</div>
			<div class = "col-md-5">
				<h3>${product.productName}</h3>
		 		<p>
		 		<strong>Catogary</strong>: ${product.productCategory}</p>
		 		<p>
		 		<strong>Condition</strong>: ${product.productCondition}</p>
		 		<p>
		 		<strong>Product Price</strong>: ${product.productPrice}</p>
			</div>
		</div>
<%@include file="/WEB-INF/views/template/footer.jsp"  %>
	</div>
</div>


		

    

   
