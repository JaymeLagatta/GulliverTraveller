<%@ page import="com.gullivertraveller.gullivertraveller.model.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Editar Usuários</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
</head>

<body>
<div class="container mt-5">
    <form action="/gulliverTraveller_war_exploded/editUserUpdate" method="get" target="_self" class="form">
        <% Usuario user = (Usuario) request.getAttribute("usuario");%>

        <label for="inputId" class="col-sm-2 col-form-label">ID</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputId" name="idUsuario" value="<%= user.getId_usuario() %>">
        </div>
        <label for="inputName" class="col-sm-2 col-form-label">Nome</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputName" name="name" value="<%= user.getNome() %>">
        </div>
        <label for="inputGenero" class="col-sm-2 col-form-label">Gênero</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputGenero" name="genero" value="<%= user.getGenero() %>">
        </div>

        <label for="inputTipoUsuario" class="col-sm-2 col-form-label">Tipo de Usuário</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTipoUsuario" name="tipo_usuario"
                   value="<%= user.getTipo_usuario() %>">
        </div>

        <label for="inputGenero" class="col-sm-2 col-form-label">CPF</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="cpf" id="inputcpf" name="cpf"
                   value="<% if (user.getCpf() != null && !user.getCpf().isEmpty()) { out.print(user.getCpf()); } else { out.print(""); } %>">
        </div>

        <label for="inputTipoUsuario" class="col-sm-2 col-form-label">Telefone</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTelefone" name="telefone"
                   value="<%= user.getTelefone() != null && !user.getTelefone().isEmpty() ? user.getTelefone() : "" %>">

        </div>
        <label for="inputInstagram" class="col-sm-2 col-form-label">Instagram</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputInstagram" name="instagram"
                   value="<% if (user.getInstagram_usuario() != null && user.getInstagram_usuario().isEmpty()) { out.print(user.getInstagram_usuario()); } else { out.print(""); } %>">
        </div>

        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" name="email" id="staticEmail" value="<%= user.getEmail() %>">
        </div>

        <label for="inputPassword" class="col-sm-2 col-form-label">Senha</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword" name="senha" value="<%= user.getSenha() %>">
        </div>

        <button type="submit" class="btn btn-success">Atualizar</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
