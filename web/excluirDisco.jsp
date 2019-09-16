<%-- 
    Document   : excluirDisco
    Created on : 16/09/2019, 16:13:50
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
          <%try { %>
       <% int index = Integer.parseInt(request.getParameter("index"));%>
       <% Disco disco = dbDiscos.getDisco().get(index); %>
       <form>
           Índice:<br/>
           <%= index %><br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           Nome: <br/>
          <%=disco.getNome()%><br/>
           Artista: <br/>
         <%=disco.getArtista()%><br/>
           Ano de Lançamento: <br/>
         <%=disco.getAno()%><br/><br/>
           
           <input type="submit" name="cancelar" value="Cancelar"/>
           <input type="submit" name="remove" value="Excluir"/>
           
       </form>
      <% 
            if(request.getParameter("cancelar")!=null){
            response.sendRedirect("index.jsp");
            }
            if (request.getParameter("remove") != null){
            dbDiscos.getDisco().remove(index);
            response.sendRedirect("index.jsp");
            }
          %>
       <%} catch (Exception e) {%>
       <h1>Erro no processamento de dados</h1>
       <%}%>
    </body>
</html>
