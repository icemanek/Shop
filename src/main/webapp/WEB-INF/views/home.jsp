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
    <link href="../css/homepage.css" rel="stylesheet" >
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
</head>
<body>

<%@include file="parts/header.jsp" %>

<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <a href="/p/5"> <img style="height: 80%" class="d-block mx-auto rounded"
                 src="https://images.morele.net/i1064/4151092_15_i1064.jpg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                <h5 href="/p/5">Zasilacz Corsair AX Series 1600i</h5>
                <p>W wyjątkowej cenie!!!</p>
                </div>
            </a>
                </div>
            </div>
        </div>
        <%--<div class="carousel-item">--%>
            <%--<a href="/p/8"><img style="height:80%" class="d-block mx-auto rounded"--%>
                 <%--src="https://images.morele.net/i1064/5645369_0_i1064.jpg"--%>
                 <%--alt="Second slide">--%>
            <%--<div class="carousel-caption d-none d-md-block">--%>
                <%--<h5>Procesor Intel Core i9-9980XE 3Ghz, 23.75MB, Box</h5>--%>
                <%--<p>Tylko u nas!</p>--%>
            <%--</div>--%>
            <%--</a>--%>
        <%--</div>--%>
        <%--<div class="carousel-item">--%>
            <%--<a href="/p/13"><img style="height: 80%" class="d-block mx-auto rounded"--%>
                 <%--src="https://images.morele.net/i1064/1347525_0_i1064.jpg"--%>
                 <%--alt="Third slide"--%>
            <%--href="">--%>
            <%--<div class="carousel-caption d-none d-md-block">--%>
                <%--<h5>G.Skill Trident Z RGB, DDR4, 128 GB,3200MHz</h5>--%>
                <%--<p>Najlepsza cena na rynku!</p>--%>
            <%--</div>--%>
            <%--</a>--%>
        </div>
    </div>
</div>
<footer>
    <%@include file="parts/footer.jsp" %>
</footer>

</body>
</html>
