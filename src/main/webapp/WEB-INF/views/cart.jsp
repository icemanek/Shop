<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="../css/koszyk.css" rel="stylesheet">
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
        function confirmDelete(id) {
            if (confirm("Czy na pewno usunąć produkt?")) {

                window.location.href = "/delete/" + id;
            }
        }

        function addQuantity(id) {

            window.location.href = "/addToCart/" + id + "/" + 1;
        }



    </script>
</head>
<body class="bg-light">

<%@include file="parts/header.jsp" %>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="font-weight-bold">Twój koszyk</h4>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Nazwa</th>
                    <th scope="col"></th>
                    <th scope="col" style="width: 20%"></th>
                    <th scope="col">Cena</th>
                    <th scope="col"></th>
                    <th scope="col"></th>

                    <th scope="col">Ilość sztuk</th>
                    <th scope="col">Suma</th>
                    <th scope="col">Zniżka</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${cart.cartItems}">
                    <tr>
                        <td><a href="/p/${item.product.id}">${item.product.model}</a></td>
                        <td></td>
                        <td><img src="${item.product.imageUrl}" style="width: 30%"></td>
                        <td>${item.product.price} zł</td>
                        <td></td>
                        <td></td>
                        <td> ${item.quantity}</td>
                        <td> ${item.product.price * item.quantity} zł</td>


                        <td></td>
                        <td>
                            <a href="#" onclick="confirmDelete(${item.product.id}, ${item.quantity})">Usuń</a>
                        </td>

                        <td>
                            <a href="#" onclick="addQuantity(${item.product.id}, ${item.quantity})">Dodaj</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div>
                Ilość pozycji: ${items}                  &nbsp
                Ilość sztuk: ${numOfProducts}                  &nbsp
                Wartość zakupów: ${total} zł
            </div>
            <a href="#" type="submit" class="btn">Zamawiam</a>
        </div>
    </div>
</div>
<footer>
    <%@include file="parts/footer.jsp" %>
</footer>
</body>
</html>
