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
           <b>Índice:</b>
           <%= index %><br/>
           <input type="hidden" name="index" value="<%=index%>"/>
           <b> Nome: </b><br/>
          <%=disco.getNome()%><br/>
          <b> Artista: </b> <br/>
         <%=disco.getArtista()%><br/>
          <b> Ano de Lançamento: </b> <br/>
         <%=disco.getAno()%><br/><br/>
           
           <input type="submit" name="cancelar" value="Cancelar" class="btn btn-danger"/>
           <input type="submit" name="remove" value="Excluir" class="btn btn-success"/>
           
       </form>
       </div>
      <% 
            if(request.getParameter("cancelar")!=null){
            response.sendRedirect("discos.jsp");
            }
            if (request.getParameter("remove") != null){
            dbDiscos.getDisco().remove(index);
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
