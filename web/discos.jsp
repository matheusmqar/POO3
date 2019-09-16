<%-- 
    Document   : discos
    Created on : 14/09/2019, 11:17:31
    Author     : marlon.santos
--%>
<%@page import="br.com.fatecpg.tp.dbDiscos"%>
<%@page import="br.com.fatecpg.tp.Disco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discos - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>
    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
          <div class="container">
            <h2>Lista de Discos</h2>
        <a href="incluirDisco.jsp" class="btn btn-primary">Incluir Disco</a>

        <table class="table table-hover mt-2">
                <thead class="thead-dark">
                <th>Índice</th>    
                <th>Nome</th>
                <th>Artista</th>
                <th>Ano de Lançamento</th>
                </thead>
            
            <% for (Disco disco : dbDiscos.getDisco()) { %>
            <tr>
                <td><%= dbDiscos.getDisco().indexOf(disco) +1 %> </td>
                <td><%= disco.getNome() %></td>
                <td><%= disco.getArtista() %></td>
                <td><%= disco.getAno() %></td>
                <td>
                    <a href="excluirDisco.jsp?index=<%= dbDiscos.getDisco().indexOf(disco) %>">Excluir</a>
                    <a href="alterarDisco.jsp?index=<%= dbDiscos.getDisco().indexOf(disco) %>">Alterar</a>
                </td>
            </tr>
            <%}%>
        </table>
          </div>
        <!--Include para rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>
</html>