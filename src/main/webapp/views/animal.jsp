<%@ page import="java.util.List" %>
<%@ page import="com.ggjiuw.animals.Animal" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title> Congratulations! You added new animal:</title>
    </head>
    <body>
        <div>
            <div>
                <%
                Animal a = (Animal)request.getAttribute("animals");
                  out.println("<h2>" + a.getName() + "</h2>");
                                            out.println("<p>" + a.getType() + "</p>");
                %>
            </div>
        </div>

        <div>
            <button onclick="location.href='/castle'">Back to list</button>
        </div>
    </body>
</html>