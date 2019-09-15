<%-- 
    Document   : bandas
    Created on : 14/09/2019, 11:17:14
    Author     : marlon.santos
--%>

<%@page import="br.com.fatecpg.tp.dbBandas"%>
<%@page import="br.com.fatecpg.tp.Banda"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bandas - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>
    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
        <% 
            ArrayList<Banda> bandas = dbBandas.SelectAll();
        %>
        <div class="container">
            <h2>Lista de Bandas</h2>
            <a href="bandaNovo.jsp" class="btn btn-primary">Nova banda</a>
            <table class="tab">
                <thead>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col" colspan="2">Ações</th>
                </thead>
                <tbody>
                    <%for(int i = 0; i < bandas.size(); i++){
                        Banda banda = bandas.get(i);%>
                        <tr>
                            <td><%=banda.getId()+1%></td>
                            <td><%=banda.getName()%></td>
                            <td><a href="bandaDetalhes.jsp?id=<%=banda.getId()%>">Detalhes</a></td>
                            <td><a href="bandaEditar.jsp?id=<%=banda.getId()%>">Editar</a></td>
                            <td><a href="bandaExcluir.jsp?id=<%=banda.getId()%>">Deletar</a></td>
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