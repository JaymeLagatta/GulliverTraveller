<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Adcicionar Usuários</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
</head>

<body>
<div class="container mt-5">
    <form action="/gulliverTraveller_war_exploded/addUser" method="get" target="_self" class="form">

        <label for="inputName" class="col-sm-2 col-form-label">Nome</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputName" name="name" value="">
        </div>
        <label for="inputGenero" class="col-sm-2 col-form-label">Gênero</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputGenero" name="genero" value="">
        </div>

        <label for="inputTipoUsuario" class="col-sm-2 col-form-label">Tipo de Usuário</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTipoUsuario" name="tipo_usuario"
                   value="">
        </div>

        <label for="inputGenero" class="col-sm-2 col-form-label">CPF</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="cpf" id="inputcpf" name="cpf"
                   value="">
        </div>

        <label for="inputTipoUsuario" class="col-sm-2 col-form-label">Telefone</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTelefone" name="telefone"
                   value="">

        </div>
        <label for="inputInstagram" class="col-sm-2 col-form-label">Instagram</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputInstagram" name="instagram"
                   value="">
        </div>

        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control-plaintext" name="email" id="staticEmail" value="">
        </div>

        <label for="inputPassword" class="col-sm-2 col-form-label">Senha</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword" name="senha" value="">
        </div>

        <button type="submit" class="btn btn-success">Criar</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
