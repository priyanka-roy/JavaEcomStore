<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
			<h1><spring:message code="productlist.pageHeader"></spring:message></h1>
            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr class="bg-success">
                    <th>Proto Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    
                    <th>Price</th>
                    <th>Information</th>
                </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                  
                    <td>${product.productPrice} EURO </td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>
</div>
<div class="container">
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</div>
</div>
