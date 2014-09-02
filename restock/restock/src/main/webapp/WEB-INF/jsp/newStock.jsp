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
                                    <label class="label" for="szallitonev">Szállító neve neve:</label>
                                    <input path="szallitonev" id="szallitonev" class="input" type="text" value="" name="szallitonev" placeholder="Szállító neve"/>                                   
                                    
                                </p>

                                <!--Szállítólevél sorzáma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="szal_lev_sorszam">Szállítólevél sorszáma:</label>
                                    <input path="szal_lev_sorszam" id="szal_lev_sorszam" class="input" type="text" value="" name="szal_lev_sorszam" placeholder="Szállító levél sorszáma"/>
                                    
                                    
                                </p>

                                <!--Átvétel dátuma -->
                                <p class="button-height inline-label">
                                    <label class="label" for="atvetel_datum">Átvétel dátuma:</label>
                                    <input path='atvetel_datum' id="atvetel_datum" class="input" type="text" value="" name="atvetel_datum" placeholder="Átvétel dátuma:"/>
                                </p>
                                
                                <div id="atvett_eszkoz">
                                <fieldset class="fieldset">
                                    <legend class="legend">Átvett eszközök paraméterei:</legend>
                                    <!--Bizományos -->
                                    <p class="button-height inline-label">
                                        <label class="label" for="bizomanyos">Bizományos:</label>
                                        <input type="checkbox" name="auto-refresh" id="bizomanyosBekapcsol" checked="checked" class="switch tiny mid-margin-right replacement">                                                                  
                                    </p>

                                    <!--OEP támogatás -->
                                    <p class="button-height inline-label">
                                        <label class="label" for="oep_tamogatott">OEP támogatott:</label>
                                        <input type="checkbox" name="auto-refresh" id="oepBekapcsol" checked="checked" class="switch tiny mid-margin-right replacement">                                     
                                    </p>                                    
                                </fieldset>
                                </div>
                                
                            </fieldset>
                        </div>
                        <br/><br/>
                        <div>
                            <fieldset class="fieldset">
                                <legend class="legend">Cikk adatok</legend>
                                <!--Cikkszám -->
                                <p class="button-height inline-label">
                                    <label class="label" for="cikkszam">Cikkszám:</label>
                                    <input path="cikkszam" id="cikkszam" class="input" type="text" value="" name="cikkszam" placeholder="Cikkszám"/>                                                                       
                                </p>

                                <!--Cikk neve -->
                                <p class="button-height inline-label">
                                    <label class="label" for="cikk_nev">Cikk neve:</label>
                                    <input path="cikk_nev" id="cikk_nev" class="input" type="text" value="" name="cikk_nev" placeholder="Cikk neve"/>                                                                        
                                </p>

                                <!--Mennyiség -->
                                <p class="button-height inline-label">
                                    <label class="label" for="mennyiseg">Mennyiség (db):</label>
                                    <input path="mennyiseg" id="atvetel_datum" class="input" type="text" value="" name="mennyiseg" placeholder="Mennyiség:"/>
                                </p>
                                <!--Egységár -->
                                <p class="button-height inline-label">
                                    <label class="label" for="egysegar">Egységár:</label>
                                    <input path="egysegar" id="egysegar" class="input" type="text" value="" name="egysegar" placeholder="Egységár"/>                                                                       
                                </p>

                                <!--Tételérték -->
                                <p class="button-height inline-label">
                                    <label class="label" for="tetelertek">Tételérték:</label>
                                    <input path="tetelertek" id="tetelertek" class="input" type="text" value="" name="tetelertek" placeholder="Tételérték"/>                                                                        
                                </p>

                                <!--Gyári szám -->
                                <p class="button-height inline-label">
                                    <label class="label" for="gyariszam">Gyáriszám:</label>
                                    <input path="gyariszam" id="gyariszam" class="input" type="text" value="" name="gyariszam" placeholder="Gyáriszám:"/>
                                </p>
                                
                                <!--Áfa nélküli érték -->
                                <p class="button-height inline-label">
                                    <label class="label" for="afa_nelkuli_ertek">ÁFA nélküli érték:</label>
                                    <input path="afa_nelkuli_ertek" id="afa_nelkuli_ertek" class="input" type="text" value="" name="afa_nelkuli_ertek" placeholder="ÁFA nélküli érték"/>                                                                       
                                </p>

                                <!--ÁFA -->
                                <p class="button-height inline-label">
                                    <label class="label" for="afa_ertek">ÁFA összege:</label>
                                    <input path="afa_ertek" id="afa_ertek" class="input" type="text" value="" name="afa_ertek" placeholder="ÁFA összege"/>                                                                        
                                </p>

                                <!--ÁFA-s összeg -->
                                <p class="button-height inline-label">
                                    <label class="label" for="afas_ertek">ÁFA-s összeg:</label>
                                    <input path="afas_ertek" id="afas_ertek" class="input" type="text" value="" name="afas_ertek" placeholder="ÁFA-s összeg:"/>
                                </p>
                                
                            </fieldset>
                        </div>
                        
                    </div>
            </div>
          <a href="#" class="button" onclick=""><span><span>Mentés</span></span></a>
      </form>   
       
       
    </body>
</html>
