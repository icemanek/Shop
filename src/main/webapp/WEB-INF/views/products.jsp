<%--
  Created by IntelliJ IDEA.
  User: emil
  Date: 08.02.19
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sklep komputerowy</title>
    <link href="../css/prod.css" rel="stylesheet" >
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>

<%@include file="parts/header.jsp" %>

<div class="container">
<c:forEach var="product" items="${products}">

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="my-list">
                <img src="${product.imageUrl}"/>
                <h3>${product.manufacturer}${product.model}</h3>
                <span></span>
                <span class="pull-right">${product.price} zł</span>
                <div class="offer"></div>
                <div class="detail">
                    <p>${product.description}</p>
                    <img src="${product.imageUrl}" />

                    <a id="link" href="/addToCart/${product.id}/1" type="submit"  class="btn">Dodaj do koszyka</a>
                    <a href="/p/${product.id}" class="btn">Szczegóły</a>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>

<footer>
    <%@include file="parts/footer.jsp" %>
</footer>
</body>
</html>
