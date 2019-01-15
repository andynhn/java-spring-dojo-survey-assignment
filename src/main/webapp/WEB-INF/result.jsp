<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/time.js"></script>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> -->
    <title>Result Page</title>
</head>
<body>
    <div class="container">
        <h2>Submitted Info</h2>
        <p>Name: <c:out value="${name}"/></p>
        <p>Dojo Location: <c:out value="${dojolocation}"/></p>
        <p>Favorite Language: <c:out value="${favoritelanguage}"/></p>
        <p>Comment: <c:out value="${comment}"/></p>
        <a href="/"><button>Go Back</button></a>
    </div>
</body>
</html>