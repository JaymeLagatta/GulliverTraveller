<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="com.gullivertraveller.gullivertraveller.model.Locais" %>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/hoteis.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <script src="../scripts/menu.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Traveller</title>
</head>
<body>
<header>
    <nav class="header">
        <div>
            <h2>
                <a href="/">Traveller</a>
            </h2>
        </div>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/locais">Hotéis</a></li>
            <li><a href="#places">Lugares</a></li>
        </ul>
    </nav>
</header>
<div class="hamburger-menu">
    <div id="links">
        <li><a href="/">Home</a></li>
        <li><a href="/#hotels">Hotéis</a></li>
        <li><a href="/#places">Lugares</a></li>
    </div>
    <a class="icon" onclick="openMenu()">
        <i class="fa fa-bars"></i>
    </a>
</div>
<div class="section" id="hotels">
    <div class="barra-pesquisa">
        <input id="cidade" type="text" placeholder="Digite a cidade">
        <input id="data" type="date">
        <button type="submit">Pesquisar</button>
    </div>

    <div class="card-area">
        <% List<Locais> locais = (List<Locais>) request.getAttribute("locais");
            if (locais != null) {
                for (Locais local : locais) { %>
        <a href="/localDetalhe?id=<%= local.getCod_local() %>">
            <div class="card">
                <img src="images/hoteis/hotel-room.jpg" alt="Foto do Hotel">
                <div class="card-title">
                    <h3><%= local.getNome_local() != null ? local.getNome_local() : "Nome não disponível" %></h3>
                    <p><%= local.getCidade() != null ? local.getCidade().getCidade() : "Cidade não disponível" %></p>
                </div>
                <p id="description"><%= local.getEndereco_local() != null ? local.getEndereco_local() : "Endereço não disponível" %></p>
            </div>
        </a>
        <%     }
        } else { %>
        <p>Nenhum local encontrado</p>
        <% } %>
    </div>
</div>
<footer>
    <p>Projeto Traveller - Todos os direitos reservados</p>
</footer>
</body>
</html>
