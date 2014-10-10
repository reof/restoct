<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <th scope="col" width="15%" class="align-center hide-on-mobile-portrait">Szállító</th>
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
            <tr>
                <td class="align-center">1</td>
                <td class="align-center">2</td>
                <td class="align-center">3</td>
                <td class="align-center">4</td>
                <td class="align-center">5</td>
                <td class="align-center">Valaki</td>
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
        </tbody>
    </table>
</div>