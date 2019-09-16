<%-- 
    Document   : musica
    Created on : 15/09/2019, 00:08:02
    Author     : Eliv
--%>

<%@page import="br.com.fatecpg.tp.dbMusicas"%>
<%@page import="br.com.fatecpg.tp.Musica"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musicas - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>
    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
        <% 
            ArrayList<Musica> musicas = dbMusicas.SelectAll();
        %>
        <div class="container">
            <h2>Lista de Musicas</h2>
            <a href="musicaNovo.jsp" class="btn btn-primary">Nova musica</a>
            <table class="table table-hover mt-2">
                <thead class="thead-dark">
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col" colspan="2">Ações</th>
                </thead>
                <tbody>
                    <%for(int i = 0; i < musicas.size(); i++){
                        Musica musica = musicas.get(i);%>
                        <tr>
                            <td><%=musica.getId()+1%></td>
                            <td><%=musica.getName()%></td>
                            <td>
                                <a href="musicaDetalhes.jsp?id=<%=musica.getId()%>" class="btn btn-outline-secondary btn-sm">Detalhes</a>
                                <a href="musicaEditar.jsp?id=<%=musica.getId()%>" class="btn btn-outline-info btn-sm">Editar</a>
                                <a href="musicaDeletar.jsp?id=<%=musica.getId()%>" class="btn btn-outline-danger btn-sm">Deletar</a>
                            </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        
        <!--Include para rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>
</html>