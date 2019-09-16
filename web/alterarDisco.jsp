<%-- 
    Document   : alterarDisco
    Created on : 16/09/2019, 15:52:21
    Author     : daniel.rares
--%>

<%@page import="br.com.fatecpg.tp.Disco"%>
<%@page import="br.com.fatecpg.tp.dbDiscos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%try { %>
       <% int index = Integer.parseInt(request.getParameter("index"));%>
       <% Disco disco = dbDiscos.getDisco().get(index); %>
       <form>
           Índice:<br/>
           <%= index %><br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           Nome: <br/>
           <input type="text" name="nome" value="<%=disco.getNome()%>"/><br/>
           Artista: <br/>
           <input type="text" name="artista" value="<%=disco.getArtista()%>"/><br/>
           Ano de Lançamento: <br/>
           <input type="text" name="ano" value="<%=disco.getAno()%>"/><br/><br/>
           
           <input type="submit" name="cancelar" value="Cancelar"/>
           <input type="submit" name="set" value="Alterar"/>
           
       </form>
      <% 
            if(request.getParameter("cancelar")!=null){
            response.sendRedirect("index.jsp");
            }
            if (request.getParameter("set") != null){
            String nome = request.getParameter("nome");
            String artista = request.getParameter("artista");
            int ano = Integer.parseInt(request.getParameter("ano"));
            dbDiscos.getDisco().set(index, new Disco(nome,artista,ano));
            response.sendRedirect("index.jsp");
            }
          %>
       <%} catch (Exception e) {%>
       <h1>Erro no processamento de dados</h1>
       <%}%>
    </body>
</html>
