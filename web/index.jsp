<%-- 
    Document   : index
    Created on : 16/09/2019, 11:49:23
    Author     : Orlando
--%>
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
        <%@include file="WEB-INF/jspf/header2.jspf" %>
        
        <!--Conteúdo principal da página-->
        <div class="card mb-3 text-center">
            <img class="card-img-top" src="res/img/JoJo.jpg" style=" 
                max-width: 100rem; padding-bottom: 10px; padding-top: 15px;" alt="Imagem de capa do card">
            <div class="card-body">
              <h5 class="card-title">TP-03:GRUPO 1</h5>
              <p class="card-text">A aplicação a seguir tem o objetivo de 
              administrar uma "database" musical.Ela foi desenvolvida pelos 
              devs abaixo:  </p>
            </div>
        </div>
        <hr/>
        <div class="card-group">
            <div class="card">
                <img class="card-img-top" src="res/img/marlon.jpg"  style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Marlon</h5>
                        <p class="card-text">@GitHub: Marlon3DS</p>
                    </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="res/img/eu.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Orlando</h5>
                        <p class="card-text">@GitHub: OrlandoFatec</p>
                    </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="res/img/Yf.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Yfiklis</h5>
                        <p class="card-text">@GitHub: </p>
                    </div>
            </div>           
            <div class="card">
                <img class="card-img-top" src="res/img/elivelton.jpeg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Elivelton</h5>
                        <p class="card-text">@GitHub: Elivelton</p>
                    </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="res/img/matheus.jpg" style="max-width: 18rem;" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">Matheus</h5>
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