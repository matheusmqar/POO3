<%-- 
    Document   : incluirDisco
    Created on : 16/09/2019, 15:14:03
    Author     : daniel.rares
--%>

<%@page import="br.com.fatecpg.tp.dbDiscos"%>
<%@page import="br.com.fatecpg.tp.Disco"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            Nome do Disco:<br/>
            <input type="text" name="nome"/><br/>
            Artista:<br/>
            <input type="text" name="artista"/><br/>
            Ano de Lançamento: <br/>
            <input type="number" name="ano"/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/>
            <input type="submit" name="add" value="Incluir">
        </form>
        
        <% 
            if (request.getParameter("cancelar")!= null){
            response.sendRedirect("index.jsp");
            }
            if (request.getParameter("add") !=null){
            String nome = request.getParameter("nome");
            String artista = request.getParameter("artista");
            int ano = Integer.parseInt(request.getParameter("ano"));
            dbDiscos.getDisco().add(new Disco(nome,artista,ano));
            response.sendRedirect("index.jsp");
            }
            %>
            
    </body>
</html>
