<%-- 
    Document   : newSuplier
    Created on : 2014.10.10., 14:09:36
    Author     : Ati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
      <form id="cikk_form">        
       <div class="columns">
                    <div class="six-columns">
                        <div>
                            <fieldset class="fieldset">
                                <legend class="legend">Szállító adatok</legend>
                                <!--Szállító teljes neve -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallíto_nev">Szállító neve:</label>
                                    <input path="szallito_nev" id="szallito_nev" class="input" type="text" value="" name="szallito_nev" placeholder="Szállító neve"/>                                   
                                    
                                </p>

                                <!--Szállító címe -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_cime">Szállító címe:</label>
                                    <input path="szallito_cime" id="szallito_cime" class="input" type="text" value="" name="szallio_cime" placeholder="Szállító címe"/>
                                                                        
                                </p>

                                <!--Szállító adószáma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_adoszam">Szállító adószáma:</label>
                                    <input path='szallito_adoszam' id="szallito_adoszam" class="input" type="text" value="" name="szallito_adoszam" placeholder="Szállító adószáma:"/>
                                </p>
                                
                                <!--Szállító telefonszáma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szallito_telefonszam">Szállító telefonszáma:</label>
                                    <input path='szallito_telefon' id="szallito_telefon" class="input" type="text" value="" name="szallito_telefon" placeholder="Szállító telefonszáma:"/>
                                </p>
                            </fieldset>
                        </div>                       
                    </div>
            </div>
          <a href="#" class="button" onclick=""><span><span>Mentés</span></span></a>
      </form>   
       
       
    </body>
</html>
