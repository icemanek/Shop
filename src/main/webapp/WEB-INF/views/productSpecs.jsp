<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: emil
  Date: 08.02.19
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sklep komputerowy</title>
    <link href="../css/prodSpecifications.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script>


        // script for select number of quantity function myFunction() {
        //     var dropdown = document.getElementById("dropdown");
        //     var link = document.getElementById("link");


        <%--if(dropdown.value == 1){--%>
        <%--link.href = "/addToCart/"+${product.id} +"/1";--%>
        <%--}--%>
        <%--if (dropdown.value == 2){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/2";--%>
        <%--}--%>
        <%--if (dropdown.value == 3){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/3";--%>
        <%--}--%>
        <%--if (dropdown.value == 4){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/4";--%>
        <%--}--%>
        <%--if (dropdown.value == 5){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/5";--%>
        <%--}--%>
        <%--if (dropdown.value == 6){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/6";--%>
        <%--}--%>
        <%--if (dropdown.value == 7){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/7";            }--%>
        <%--if (dropdown.value == 8){--%>

        <%--link.href = "/addToCart/"+${product.id} +"/8";--%>
        <%--}--%>
        // }


        function my() {
            var result = document.getElementById("result");
            result.href = "/addToCart/" + ${product.id} +"/" + input.value;
            }

    </script>


</head>
<body>

<%@include file="parts/header.jsp" %>

<div class="container">
    <h1>${product.manufacturer} ${product.model}</h1>
    <img src="${product.imageUrl}">
    <h2>${product.price} zł</h2>
    <p>${product.description}</p>

    <%-- choose number of quantity from select <select name="theme" onchange="myFunction()" id="dropdown" class="dropdown">--%>

    <%--<option value="">Wybierz ilośc produktów</option>--%>
    <%--<option value="1">1</option>--%>
    <%--<option value="2">2</option>--%>
    <%--<option value="3">3</option>--%>
    <%--<option value="4">4</option>--%>
    <%--<option value="5">5</option>--%>
    <%--<option value="6">6</option>--%>
    <%--<option value="7">7</option>--%>
    <%--<option value="8">8</option>--%>

    <%--</select>--%>

    Wpisz ilośc produktu <input type="number" name="num" min="1" id="input"
                                onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : event.charCode >= 48 && event.charCode <= 57"
                                onchange="my()">

    <a id="result" href="/addToCart/${product.id}/1" class="btn">Dodaj do koszyka</a>

</div>

</div>
<footer>
    <%@include file="parts/footer.jsp" %>
</footer>
</body>
</html>
