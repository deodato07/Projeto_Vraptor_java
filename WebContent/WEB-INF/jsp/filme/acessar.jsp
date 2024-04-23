<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<!-- Aba Jquery -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    
</head>
<body>
    <div id="container">
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Formulário</a></li>
                <li><a href="#tabs-2">Lista</a></li>
            </ul>
            <div id="tabs-1">
                <%@include file="form.jsp"%>
            </div>
            <div id="tabs-2">
                <%@include file="listar.jsp"%>
            </div>
        </div>
    </div>
    
    <style>
        /* Estilo para centralizar o conteúdo */
        #container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
    </style>
    
    <script>
        $(function() {
            $("#tabs").tabs();
        });
    </script>
</body>
</html>