<%-- 
    Document   : bandaNovo
    Created on : 15/09/2019, 13:49:40
    Author     : marlon.santos
--%>

<%@page import="br.com.fatecpg.tp.Banda"%>
<%@page import="br.com.fatecpg.tp.dbBandas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Banda - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>
    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
        <%try{
            if(request.getParameter("salvar") != null && request.getParameter("name") != ""){
                int id = dbBandas.getNextId();
                String nome = request.getParameter("name");
                dbBandas.Insert(new Banda(id, nome));
                response.sendRedirect("musicas.jsp");
            } else {
        %>
                <div class="container">
                    <form>
                        <div class="form-group">
                            <label for="name">Nome</label>
                            <input type="text" name="name" />
                            <%
                                if(request.getParameter("name") != null && request.getParameter("name") == ""){
                                    out.println("<p class='text-danger'>*O campo nome não pode estar vazio!</p>");
                                }
                            %>
                        </div>
                        <a href="bandas.jsp" class="btn btn-danger">Cancelar</a>
                        <input type="submit" name="salvar" value="Salvar" class="btn btn-success" />
                    </form>
                </div>
        <%
            }
        }catch(Exception e){%>
            <%@include file="WEB-INF/jspf/error.jspf" %>
        <%}%>
        
        <!--Include para rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>[
</html>
