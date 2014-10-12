<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="with-padding">
    <div class="table-header button-height">
        <div class="float-right">
            Keresés&nbsp;<input type="text" name="table_search" id="table_search" value="" class="input mid-margin-left">
        </div>       
        Mutat&nbsp;<select name="range" class="select blue-gradient glossy">
            <option value="1">10</option>
            <option value="2">20</option>
            <option value="3" selected="selected">40</option>
            <option value="4">100</option>
        </select> bejegyzés
    </div>
    <table class="simple-table responsive-table" id="sorting-example1">
        <thead>
            <tr>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Cikkszám</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Megnevezés</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Mennyiség</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Szállító</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Gyáriszám</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile-portrait">ÁFA</th>
                <th scope="col" width="100" class="align-right">Műveletek</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <td colspan="6">
                    <a href="#" onclick="loadNewStockWindow();">Új cikk</a>
                </td>
            </tr>
        </tfoot>
        <tbody>
            <%if (request.getAttribute("stock_list") != null) {%>
            <c:forEach items="${stock_list}" var="stock">
            <tr>
                <td class="align-center">${stock.cikkszam}</td>
                <td class="align-center">${stock.nev}</td>
                <td class="align-center">${stock.mennyisegi_egyseg}</td>
                <td class="align-center">${stock.szallito}</td>
                <td class="align-center">${stock.gyariszam}</td>
                <td class="align-center">${stock.afa}</td>
                <td class="low-padding">
                    <span class="select compact full-width" tabindex="0">
                        <a href="#" class="select-value">Szerkesztés</a>
                        <span class="select-arrow"></span>
                        <span class="drop-down">
                            <a href="#">Szerkesztés</a>
                            <a href="#">Törlés</a>
                        </span>
                    </span>
                </td>
            </tr> 
            </c:forEach>
          <%}%>
        </tbody>
    </table>
</div>