<%-- 
    Document   : index
    Created on : 16/09/2019, 11:49:23
    Author     : Orlando
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.tp.Banda"%>
<%@page import="br.com.fatecpg.tp.Disco"%>
<%@page import="br.com.fatecpg.tp.Musica"%>
<%@page import="br.com.fatecpg.tp.dbBandas"%>
<%@page import="br.com.fatecpg.tp.dbDiscos"%>
<%@page import="br.com.fatecpg.tp.dbMusicas"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeira Página - TP-03</title>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlecss.jspf" %>
    </head>

    <body>
        <!--Include para cabeçalho-->
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <!--Conteúdo principal da página-->
        <div class="card mb-3 text-center">

            <div class="card-body">
              <h5 class="card-title">TP-03:GRUPO 1</h5>
              <p class="card-text">A aplicação a seguir tem o objetivo de 
              administrar uma "database" musical.</p>
            </div>
        </div>
        <br/>
        
         <% 
            ArrayList<Musica> musicas = dbMusicas.SelectAll();
            ArrayList<Banda> bandas = dbBandas.SelectAll();
        %>
        <div style="margin-left: 15%;">   
            <h3> Bandas </h3>
           <table border="1">
            <%for(int i = 0; i < bandas.size(); i++){
                        Banda banda = bandas.get(i);%>
                        <tr>
                            <td><%=banda.getId()+1%></td>
                            <td><%=banda.getName()%></td>
            <%}%>
            </table>
        <div style="margin-left: 30%;margin-top: -6%">   
            <h3> Músicas </h3>
           <table border="1">
            <%for(int i = 0; i < musicas.size(); i++){
                        Musica musica = musicas.get(i);%>
                        <tr>
                            <td><%=musica.getId()+1%></td>
                            <td><%=musica.getName()%></td>
            <%}%>
            </table>
        </div>    
            
        <div style="margin-left: 60%; margin-top:  -11%">   
            <h3> Discos </h3>
           <table border="1">
             <% for (Disco disco : dbDiscos.getDisco()) { %>
            <tr>
                <td><%= dbDiscos.getDisco().indexOf(disco) +1 %> </td>
                <td><%= disco.getNome() %></td>
                <td><%= disco.getArtista() %></td>
                <td><%= disco.getAno() %></td>   
            </tr>
            <%}%>
            </table>
        </div>
        <hr/> 
        <div class="card-group" style="margin-left: -12%">
            <div class="card">
                <img class="card-img-top" src="res/img/marlon.jpg"  style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Marlon</h5>
                        <p class="card-text">@GitHub: Marlon3DS</p>
                    </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="res/img/Yf.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Yfiklis</h5>
                        <p class="card-text">@GitHub: yficklis </p>
                    </div>
            </div>           
            <div class="card">
                <img class="card-img-top" src="res/img/elivelton.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Elivelton</h5>
                        <p class="card-text">@GitHub: eliveltonj</p>
                    </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="res/img/matheus.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Matheus </h5>
                        <p class="card-text">@GitHub: matheusmqar</p>
                    </div>
            </div>            
        </div>
        <!--Include para rodapé-->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!--Include para arquivos CSS-->
        <%@include file="WEB-INF/jspf/bundlejs.jspf" %>
    </body>
</html>