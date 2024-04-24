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
    <div class="boxCinzaEscuro" style="width: 100.5%; margin: 0 0px -10px -10px; text-align:justify;">
        <div id="tabs" style="min-height: 120px">
            <ul>
                <li><a href="#tabs-1">Cadastro</a></li>
                <li><a href="#tabs-2">Lista</a></li>
            </ul>
            <li>
            	<a href="#tabs-2">
            		<c:choose>
	            		<c:when test="filmeEditar.id != null">
	            			Editando Dados do Filme - ${filmeEditar.id}
	            		</c:when>
            		</c:choose>
            	</a>
            </li>
            
            <div id="tabs-1">
                <%@include file="form.jsp"%>
            </div>
            <div id="tabs-2">
                <%@include file="listar.jsp"%>
            </div>
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
        var formEditar = false;
        $(document).ready(function(){
        	if("${formEditar}"){
        		index = 1; // essa e a aba de editar/cadastrar
        		formEditar = true;
        	}else{
        		index = 0;// aba de listagem/pesquisa
        	}
        	
        	if("${tabs}" != null && "${tabs}" != ""){
        		index = "${tabs}"
        	}
        	
        	$("#tabs").tabs({
        		active: index // define qual  aba que vai exibir
        	});
        });
    </script>
</body>
</html>