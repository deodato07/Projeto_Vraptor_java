<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <fieldset>
        <form action='http://localhost:8080/vraptor-blank-project/filme/pesquisar'>
            <input type="text" name="pesquisa" placeholder="Pesquisa">
            <input class="btn btn-primary" type="submit" value="Pesquisar">
        </form>
        <br>
        <table class="table table-bordered"> 
            <thead class="thead-dark"> 
                <tr>
                    <th>Nome</th>
                    <th>Preço</th>
                    <th>Descrição</th>
                    <th>Gênero</th>
                    <th>Classificação Indicativa</th>
                    <th>Duração em minutos</th>
                    <th>Data de Lançamento</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="filme" items="${filmes}">
                    <tr>
                        <td>${filme.titulo}</td>
                        <td>${filme.preco}</td>
                        <td>${filme.descricao}</td>
                        <td>${filme.genero}</td>
                        <td>${filme.classificacaoIndicativa}</td>
                        <td>${filme.duracao}</td>
                        <td>${filme.dataLancamento}</td>
                        
                        <td>
				            <a href="/vraptor-blank-project/filme/excluir/${filme.id}" class="btn btn-danger">Excluir</a>
				        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </fieldset>
</body>


</html>
