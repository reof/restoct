<%-- 
    Document   : newStock
    Created on : 2014.09.01., 11:43:52
    Author     : fulopattila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <form:form modelAttribute="warehouse_send" id="raktar_form">        
       <div class="columns">
                    <div class="six-columns">
                        <div>
                            <fieldset class="fieldset">
                                <legend class="legend">Raktár adatok</legend>
                                <!--Raktár teljes neve -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktarnev">Raktár neve:</label>
                                    <form:input path="nev" id="raktarnev" class="input" type="text" value="${warehouse_send.nev}" name="raktarnev" placeholder="Raktár neve"/>                                   
                                    
                                </p>

                                <!--Raktár címe -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktar_cime">Raktár címe:</label>
                                    <form:input path="cim" id="raktar_cime" class="input" type="text" value="${warehouse_send.cim}" name="raktar_cime" placeholder="Raktár címe"/>
                                    
                                    
                                </p>

                                <!--Raktár típusa -->
                                <p class="button-height inline-label">
                                    <label class="label" for="raktar_tipus">Raktár típusa:</label>
                                    <form:input path='tipus' id="raktar_tipus" class="input" type="text" value="${warehouse_send.tipus}" name="raktar_tipus" placeholder="Raktár típusa:"/>
                                </p>
                            </fieldset>
                        </div>                       
                    </div>
            </div>
          <a href="#" class="button" onclick="postNewWarehouseForm()"><span><span>Mentés</span></span></a>
      </form:form>   
      <script>
            function postNewWarehouseForm() {
                $.ajax({type: 'POST', url: 'newWarehouse.htm', data: $('#raktar_form').serializeArray(), success: function(response) {
                    $("#main").html(response);
                }});
               document.getElementById("raktar_form").reset();
            }
        </script> 
       
    </body>
</html>
