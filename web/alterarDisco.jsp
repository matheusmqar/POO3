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
       <%@include file="WEB-INF/jspf/bundlecss.jspf" %>

    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>
       
       <%try { %>
       <% int index = Integer.parseInt(request.getParameter("index"));%>
       <% Disco disco = dbDiscos.getDisco().get(index); %>
       <div class="container">
       <form>
           <br/>
           Índice: 
           <%= index %><br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           Nome: <br/>
           <input type="text" name="nome" value="<%=disco.getNome()%>"/><br/>
           Artista: <br/>
           <input type="text" name="artista" value="<%=disco.getArtista()%>"/><br/>
           Ano de Lançamento: <br/>
           <input type="text" name="ano" value="<%=disco.getAno()%>"/><br/><br/>
           
           <input type="submit" name="cancelar" value="Cancelar" class="btn btn-danger"/>
           <input type="submit" name="set" value="Alterar" class="btn btn-success"/>
           
       </form>
       </div>
      <% 
            if(request.getParameter("cancelar")!=null){
            response.sendRedirect("discos.jsp");
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
       
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>
</html>
