<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Filme</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <form action='/vraptor-blank-project/filme/atualizar' method="post">
            <legend>Editar Dados do Filme</legend>
            <input type="hidden" name="id" value="${filmeEditar.id}">
            <div class="form-group">
                <label for="titulo">T�tulo:</label>
                <input class="form-control" type="text" name="titulo" id="titulo" value="${filmeEditar.titulo}">
            </div>
            <div class="form-group">
                <label for="preco">Pre�o:</label>
                <input class="form-control" type="number" name="preco" id="preco" value="${filmeEditar.preco}">
            </div>
            <div class="form-group">
                <label for="descricao">Descri��o:</label>
                <textarea class="form-control" name="descricao" id="descricao">${filmeEditar.descricao}</textarea>
            </div>
            <div class="form-group">
                <label for="genero">G�nero:</label>
                <input class="form-control" type="text" name="genero" id="genero" value="${filmeEditar.genero}">
            </div>
            <div class="form-group">
                <label for="classificacaoIndicativa">Classifica��o Indicativa:</label>
                <input class="form-control" type="text" name="classificacaoIndicativa" id="classificacaoIndicativa" value="${filmeEditar.classificacaoIndicativa}">
            </div>
            <div class="form-group">
                <label for="duracao">Dura��o em minutos:</label>
                <input class="form-control" type="number" name="duracao" id="duracao" value="${filmeEditar.duracao}">
            </div>
            <div class="form-group">
                <label for="dataLancamento">Data de Lan�amento:</label>
                <input class="form-control" type="text" name="dataLancamento" id="dataLancamento" value="${filmeEditar.dataLancamento}">
            </div>
            <div class="form-group">
                <input class="btn btn-primary" type="submit" value="Atualizar">
            </div>
        </form>
    </div>
</body>
</html>
