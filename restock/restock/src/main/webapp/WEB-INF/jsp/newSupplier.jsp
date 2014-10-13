<%-- 
    Document   : newSuplier
    Created on : 2014.10.10., 14:09:36
    Author     : Ati
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
        <form:form modelAttribute="supplier_send" id="szallito_form">        
       <div class="columns">
                    <div class="six-columns">
                        <div>
                            <fieldset class="fieldset">
                                <legend class="legend">Szállító adatok</legend>
                                <!--Szállító teljes neve -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallíto_nev">Szállító neve:</label>
                                    <form:input path="nev" id="szallito_nev" class="input" type="text" value="${supplier_send.nev}" name="szallito_nev" placeholder="Szállító neve"/>                                   
                                    
                                </p>

                                <!--Szállító címe -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_cime">Szállító címe:</label>
                                    <form:input path="cim" id="szallito_cime" class="input" type="text" value="${supplier_send.cim}" name="szallio_cime" placeholder="Szállító címe"/>
                                                                        
                                </p>

                                <!--Szállító adószáma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_adoszam">Szállító adószáma:</label>
                                    <form:input path="adoszam" id="szallito_adoszam" class="input" type="text" value="${supplier_send.adoszam}" name="szallito_adoszam" placeholder="Szállító adószáma:"/>
                                </p>
                                
                                <!--Szállító telefonszáma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_telefonszam">Szállító telefonszáma:</label>
                                    <form:input path="telefonszam" id="szallito_telefon" class="input" type="text" value="${supplier_send.telefonszam}" name="szallito_telefon" placeholder="Szállító telefonszáma:"/>
                                </p>
                            </fieldset>
                        </div>                       
                    </div>
            </div>
          <a href="#" class="button" onclick="postNewSupplierForm()"><span><span>Mentés</span></span></a>
      </form:form>   
       
        <script>
            function postNewSupplierForm() {
                $.ajax({type: 'POST', url: 'newSupplier.htm', data: $('#szallito_form').serializeArray(), success: function(response) {
                    $("#main").html(response);
                }});
               document.getElementById("szallito_form").reset();
            }
        </script>   
    </body>
</html>
