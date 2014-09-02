<%-- 
    Document   : newStock
    Created on : 2014.09.01., 11:43:52
    Author     : fulopattila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form id="cikk_form">        
       <div class="columns">
                    <div class="six-columns">
                        <div>
                            <fieldset class="fieldset">
                                <legend class="legend">Raktár adatok</legend>
                                <!--Raktár teljes neve -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktarnev">Raktár neve:</label>
                                    <input path="raktarnev" id="raktarnev" class="input" type="text" value="" name="raktarnev" placeholder="Raktár neve"/>                                   
                                    
                                </p>

                                <!--Raktár címe -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktar_cime">Raktár címe:</label>
                                    <input path="raktar_cime" id="raktar_cime" class="input" type="text" value="" name="raktar_cime" placeholder="Raktár címe"/>
                                    
                                    
                                </p>

                                <!--Raktár típusa -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktar_tipus">Raktár típusa:</label>
                                    <input path='raktar_tipus' id="raktar_tipus" class="input" type="text" value="" name="raktar_tipus" placeholder="Raktár típusa:"/>
                                </p>
                            </fieldset>
                        </div>                       
                    </div>
            </div>
          <a href="#" class="button" onclick=""><span><span>Mentés</span></span></a>
      </form>   
       
       
    </body>
</html>
