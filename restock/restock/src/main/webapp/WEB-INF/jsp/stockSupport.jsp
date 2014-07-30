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
                <th scope="col" width="15%" class="align-center hide-on-mobile">Név</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Utca</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Adószám</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">E-mail</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile">Mobil telefon</th>
                <th scope="col" width="15%" class="align-center hide-on-mobile-portrait">Státusz</th>
                <th scope="col" width="15%" class="hide-on-tablet">Cimkék</th>
                <th scope="col" width="100" class="align-right">Műveletek</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <td colspan="6">
                    <a href="#" onclick="loadSzakeekForm(null)">Új szakee</a>
                </td>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>Aktiv</td>
                <td><small class="tag">User</small> <small class="tag">Client</small> <small class="tag green-bg">Valid</small></td>
                <td class="low-padding">
                    <span class="select compact full-width" tabindex="0">
                        <a href="#" class="select-value">Szerkesztés</a>
                        <span class="select-arrow"></span>
                        <span class="drop-down">
                            <a href="#">Státusz</a>
                            <a href="#">Böngészés</a>
                            <a href="#">Szerkesztés</a>
                            <a href="#">Törlés</a>
                        </span>
                    </span>
                </td>
            </tr>  
        </tbody>
    </table>
</div>