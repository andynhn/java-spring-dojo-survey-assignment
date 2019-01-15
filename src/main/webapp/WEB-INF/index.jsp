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
    <title>Index Page</title>
</head>
<body>
    <div class="container">
        <fieldset style="border: 1px solid black"> 
            <legend><h1>Dojo Survey</h1></legend> 
            <form method="POST" action="/processForm">
                <p>
                    <span class="error"><c:out value="${error}"></c:out></span>
                    Your Name: <input type="text" name="name" required>
                </p>
                <p>
                    <span class="error"><c:out value="${error}"></c:out></span>
                    Dojo Location:  
                    <select name="dojolocation">
                        <option value="San Jose">San Jose</option>
                        <option value="Tyson's Corner">Tyson's Corner</option>
                        <option value="Seattle">Seattle</option>
                        <option value="Burbank">Burbank</option>
                    </select> 
                </p>
                <p>
                    <span class="error"><c:out value="${error}"></c:out></span>
                    Favorite Language: 
                    <select name="favoritelanguage">
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="C">C</option>
                        <option value="JavaScript">JavaScript</option>
                    </select> 
                </p>
                <p>
                    <p>Comment (optional): </p>
                    <p>
                        <textarea rows="4" cols="70" name="comment"></textarea>
                    </p>
                </p>
                <button type="submit">Submit</button>
            </form>
        </fieldset>
    </div>
</body>
</html>