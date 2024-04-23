<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seu Título</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="caminho/para/seu-arquivo-de-estilo.css">
</head>

<form action='http://localhost:8080/vraptor-blank-project/filme/salvar'>
    <legend>Inserir Dados do Filme</legend>
    <br>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.titulo">Nome:</label>
                <input class="form-control" type="text" name="filme.titulo" id="filme.titulo" placeholder="Nome do filme">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.preco">Preço:</label>
                <input class="form-control" type="number" name="filme.preco" id="filme.preco" placeholder="Preço">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.descricao">Descrição:</label>
                <input class="form-control" type="text" name="filme.descricao" maxlength="255" id="filme.descricao" placeholder="Descrição">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.genero">Gênero:</label>
                <input class="form-control" type="text" name="filme.genero" id="filme.genero" placeholder="Gênero">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.classificacaoIndicativa">Classificação Indicativa:</label>
                <input class="form-control" type="text" name="filme.classificacaoIndicativa" id="filme.classificacaoIndicativa" placeholder="Classificação Indicativa">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.duracao">Duração em minutos:</label>
                <input class="form-control" type="number" name="filme.duracao" id="filme.duracao" placeholder="Duração em minutos">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="filme.dataLancamento">Data de Lançamento:</label>
                <input class="form-control" type="text" name="filme.dataLancamento" id="filme.dataLancamento" placeholder="Data de Lançamento">
            </div>
        </div>
    </div>
    <div class="form-group">
        <input class="btn btn-primary" type="submit" value="Salvar">
    </div>
    
    <form action='/vraptor-blank-project/filme/salvar' method="post">
    
</form>



<br>
