<%@ page import="java.util.List"%>
<%@ page import="com.ggjiuw.animals.Animal"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>

<img src="castle.jpeg">

<div>
    <div>

        <%
            List<Animal> animals = (List<Animal>) request.getAttribute("animals");
            if (animals != null && !animals.isEmpty()) {
                for (Animal a : animals) {
                    out.println("<h2>" + a.getName() + "</h2>");
                    out.println("<p>" + a.getType() + "</p>");
                }
            } else out.println("<p>No animals for today!</p>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
    <button onclick="location.href='/views/newAnimalForm.html'">create new animal</button>
</div>

<form action="http://localhost:8080/castle" method="post">
    <p> <input type="type" name="name"> </p>
    <p> <textarea rows="20" cols="40" name="text" type="type"></textarea> </p>
    <p> <input type="submit" text="sendAnimal"></p>
</form>

</body>
</html>
