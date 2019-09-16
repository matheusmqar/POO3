<%-- 
    Document   : musicaDetalhes.jsp
    Created on : 16/09/2019, 00:04:00
    Author     : Elive
--%>

<%@page import="br.com.fatecpg.tp.Musica"%>
<%@page import="br.com.fatecpg.tp.dbMusicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes da Musica - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>
    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
        <%try{
            int id = Integer.parseInt(request.getParameter("id"));
            Musica musica = dbMusicas.SelectById(id);
        %>
                <div class="container">
                    <form>
                        <div class="form-group">
                            <label for="name">Nome</label>
                            <input type="text" name="name" value="<%=musica.getName()%>" disabled="true" />
                        </div>
                        <a href="musicas.jsp" class="btn btn-secondary">Voltar</a>
                        <a href="musicaEditar.jsp?id=<%=id%>" class="btn btn-info">Editar</a>
                    </form>
                </div>
        <%
        }catch(Exception e){%>
            <%@include file="WEB-INF/jspf/error.jspf" %>
        <%}%>
        
        <!--Include para rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>
</html>
