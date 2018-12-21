<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Send form</title>
    <script type="text/javascript" src="../resources/javascript/task.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <script src="https://unpkg.com/kotlin-playground@1" data-selector=".kotlin-code"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
<table cols="2">
    <tr>
        <td><p>Результат работы:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                   <span style="color: red;"> Заполните и отправте форму ниже, пожалуйста! </span>
                </c:when>
                <c:otherwise>
                    <span style="color: green;"> <c:out value = "${greeting}"/> </span>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Форма для отправки:</p></td>
        <td>
            <p>
            <%//sampleStart %>
            <form method="post" action="${context}/servletcourse/sendForm.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="firstName">First Name:</label> <br/>
                <input id="firstName" name="firstName"/> <br/>

                <label for="lastName">Last Name:</label> <br/>
                <input id="lastName" name="lastName"/> <br/>
                <br/>
                <input type="submit" value="Send">
            </form>
            <%//sampleEnd %>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать форму,
            с заполненными полями name, age.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (PersonInfoServlet.java): </p></td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
                <pre>
                    <code class="hljs language-text" id="javaCode">
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/PersonInfoServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (sendForm.jsp): </p></td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
                <pre>
                    <code class="hljs language-text" id="jspCode">
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/sendForm.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
    <script>
        $( document ).ready(function() {
            codeLoad("${context}/sources/by/gsu/servlets/PersonInfoServlet.java",
                $("#javaCode"));
            codeLoad("${context}/sources/servlet-course/sendForm.jsp",
                $("#jspCode"));
        });
    </script>
</body>
</html>
