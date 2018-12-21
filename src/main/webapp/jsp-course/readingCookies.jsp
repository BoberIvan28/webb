<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="statics/head.jsp"/>
<body>
<div id="content">
    <%
        //sampleStart
        Cookie cookie = null;
        Cookie[] cookies = null;

        cookies = request.getCookies();

        if( cookies != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");

            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                out.print("Name : " + cookie.getName() + ",  ");
                out.print("Value: " + cookie.getValue() + " <br/>");
            }
        }
        else {
            out.println("<h2>No cookies founds</h2>");
        }
        //sampleEnd
    %>
    <jsp:include page="statics/teil.jsp?name=readingCookies.jsp"/>
</div>
</body>
</html>