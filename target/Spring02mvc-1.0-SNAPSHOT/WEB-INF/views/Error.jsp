<%--
  Created by IntelliJ IDEA.
  User: emil
  Date: 09.02.19
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sklep komputerowy</title>

    <link href="../css/error.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
<script>



    const title = document.querySelector('.error_title')


    //////// Light //////////
    document.onmousemove = function(e) {
        var x = e.pageX - window.innerWidth/2;
        var y = e.pageY - window.innerHeight/2;

        title.style.setProperty('--x', x + 'px')
        title.style.setProperty('--y', y + 'px')
    }

    ////////////// Shadow ///////////////////
    title.onmousemove = function(e) {
        var x = e.pageX - window.innerWidth/2;
        var y = e.pageY - window.innerHeight/2;

        var rad = Math.atan2(y, x).toFixed(2);
        var length = Math.round(Math.sqrt((Math.pow(x,2))+(Math.pow(y,2)))/10);

        var x_shadow = Math.round(length * Math.cos(rad));
        var y_shadow = Math.round(length * Math.sin(rad));

        title.style.setProperty('--x-shadow', - x_shadow + 'px')
        title.style.setProperty('--y-shadow', - y_shadow + 'px')

    }
</script>

</head>
<body>
<section class="error_section">
    <p class="error_section_subtitle">Opps Page is not available !</p>
    <h1 class="error_title">
        <p>404</p>
        404
    </h1>
    <a href="/" class="btn">Back to home</a>
</section>

</body>
</html>
