<%-- 
    Document   : masterData
    Created on : 2014.07.09., 10:07:05
    Author     : fulopattila
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<!--[if IEMobile 7]><html class="no-js iem7 oldie"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie" lang="en"><![endif]-->
<!--[if (IE 9)&!(IEMobile)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|(gt IEMobile 7)]><!--><html class="no-js" lang="en"><!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <title>ReStock Reof Kft.</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- http://davidbcalhoun.com/2010/viewport-metatag -->
        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="320">

        <!-- http://www.kylejlarson.com/blog/2012/iphone-5-web-design/ and http://darkforge.blogspot.fr/2010/05/customize-android-browser-scaling-with.html -->
        <meta name="viewport" content="user-scalable=0, initial-scale=1.0, target-densitydpi=115">

        <link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all">
        <!-- For all browsers -->
        <link rel="stylesheet" href="css/reset.css?v=1">
        <link rel="stylesheet" href="css/style.css?v=1">
        <link rel="stylesheet" href="css/colors.css?v=1">
        <link rel="stylesheet" media="print" href="css/print.css?v=1">
        <!-- For progressively larger displays -->
        <link rel="stylesheet" media="only all and (min-width: 480px)" href="css/480.css?v=1">
        <link rel="stylesheet" media="only all and (min-width: 768px)" href="css/768.css?v=1">
        <link rel="stylesheet" media="only all and (min-width: 992px)" href="css/992.css?v=1">
        <link rel="stylesheet" media="only all and (min-width: 1200px)" href="css/1200.css?v=1">
        <!-- For Retina displays -->
        <link rel="stylesheet" media="only all and (-webkit-min-device-pixel-ratio: 1.5), only screen and (-o-min-device-pixel-ratio: 3/2), only screen and (min-device-pixel-ratio: 1.5)" href="css/2x.css?v=1">

        <!-- Webfonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

        <!-- Additional styles -->
        <link rel="stylesheet" href="css/styles/agenda.css?v=1">
        <link rel="stylesheet" href="css/styles/dashboard.css?v=1">
        <link rel="stylesheet" href="css/styles/form.css?v=1">
        <link rel="stylesheet" href="css/styles/modal.css?v=1">
        <link rel="stylesheet" href="css/styles/progress-slider.css?v=1">
        <link rel="stylesheet" href="css/styles/switches.css?v=1">
        <!-- Adat table css -->
        <link rel="stylesheet" href="css/styles/table.css?v=1">
        <link rel="stylesheet" href="js/libs/DataTables/jquery.dataTables.css?v=1">

        <!-- JavaScript at bottom except for Modernizr -->
        <script src="js/libs/modernizr.custom.js"></script>

        <!-- For Modern Browsers -->
        <link rel="shortcut icon" href="img/favicons/favicon.png">
        <!-- For everything else -->
        <link rel="shortcut icon" href="img/favicons/favicon.ico">

        <!-- iOS web-app metas -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">

        <!-- iPhone ICON -->
        <link rel="apple-touch-icon" href="img/favicons/apple-touch-icon.png" sizes="57x57">
        <!-- iPad ICON -->
        <link rel="apple-touch-icon" href="img/favicons/apple-touch-icon-ipad.png" sizes="72x72">
        <!-- iPhone (Retina) ICON -->
        <link rel="apple-touch-icon" href="img/favicons/apple-touch-icon-retina.png" sizes="114x114">
        <!-- iPad (Retina) ICON -->
        <link rel="apple-touch-icon" href="img/favicons/apple-touch-icon-ipad-retina.png" sizes="144x144">

        <!-- iPhone SPLASHSCREEN (320x460) -->
        <link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="(device-width: 320px)">
        <!-- iPhone (Retina) SPLASHSCREEN (640x960) -->
        <link rel="apple-touch-startup-image" href="img/splash/iphone-retina.png" media="(device-width: 320px) and (-webkit-device-pixel-ratio: 2)">
        <!-- iPhone 5 SPLASHSCREEN (640Ã1096) -->
        <link rel="apple-touch-startup-image" href="img/splash/iphone5.png" media="(device-height: 568px) and (-webkit-device-pixel-ratio: 2)">
        <!-- iPad (portrait) SPLASHSCREEN (748x1024) -->
        <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="(device-width: 768px) and (orientation: portrait)">
        <!-- iPad (landscape) SPLASHSCREEN (768x1004) -->
        <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="(device-width: 768px) and (orientation: landscape)">
        <!-- iPad (Retina, portrait) SPLASHSCREEN (2048x1496) -->
        <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait-retina.png" media="(device-width: 1536px) and (orientation: portrait) and (-webkit-min-device-pixel-ratio: 2)">
        <!-- iPad (Retina, landscape) SPLASHSCREEN (1536x2008) -->
        <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape-retina.png" media="(device-width: 1536px)  and (orientation: landscape) and (-webkit-min-device-pixel-ratio: 2)">

        <!-- Microsoft clear type rendering -->
        <meta http-equiv="cleartype" content="on">

        <!-- IE9 Pinned Sites: http://msdn.microsoft.com/en-us/library/gg131029.aspx -->
        <meta name="application-name" content="Developr Admin Skin">
        <meta name="msapplication-tooltip" content="Cross-platform admin template.">
        <meta name="msapplication-starturl" content="http://www.display-inline.fr/demo/developr">
        <!-- These custom tasks are examples, you need to edit them to show actual pages -->
        <meta name="msapplication-task" content="name=Agenda;action-uri=http://www.display-inline.fr/demo/developr/agenda.html;icon-uri=http://www.display-inline.fr/demo/developr/img/favicons/favicon.ico">
        <meta name="msapplication-task" content="name=My profile;action-uri=http://www.display-inline.fr/demo/developr/profile.html;icon-uri=http://www.display-inline.fr/demo/developr/img/favicons/favicon.ico">
    </head>

    <body class="clearfix with-menu with-shortcuts">

        <!-- Prompt IE 6 users to install Chrome Frame -->
        <!--[if lt IE 7]><p class="message red-gradient simpler">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

        <!-- Title bar -->
        <header role="banner" id="title-bar">
            <h2>ReStock</h2>
        </header>

        <!-- Button to open/hide menu -->
        <a href="#" id="open-menu"><span>Menu</span></a>

        <!-- Button to open/hide shortcuts -->
        <a href="#" id="open-shortcuts"><span class="icon-thumbs"></span></a>
       
        <!-- Main content -->
        <section role="main" id="main">
            

        </section>
        <!-- End main content -->



        <!-- Sidebar/drop-down menu -->
        <section id="menu" role="complementary">

            <!-- This wrapper is used by several responsive layouts -->
            <div id="menu-content">

                <header>
                    Vezérlőpult
                </header>

                <div id="profile">
                    <img src="img/user.png" width="64" height="64" alt="User name" class="user-icon">
                    Üdv
                    <span class="name">Fülöp Attila</span>
                </div>

                <!-- By default, this section is made for 4 icons, see the doc to learn how to change this, in "basic markup explained" -->
                <ul id="access" class="children-tooltip">
                    <li class="disabled"><a href="inbox.html" title="Üzenetek"><span class="icon-inbox"></span></a></li>
                    <li class="disabled"><a href="calendars.html" title="Naptár"><span class="icon-calendar"></span></a></li>
                    <li><a href="index.htm" title="Profil"><span class="icon-user"></span></a></li>
                    <li class="disabled"><span class="icon-gear"></span></li>
                </ul>

                <section class="navigable">
                    <ul class="big-menu">
                        <li class="with-right-arrow">
                            <span><span class="list-count">4</span>Műveletek</span>
                            <ul class="big-menu">
                                <li><a onclick="loadStockSupportForm();">Cikkek karbantartása</a></li>
                                <li><a onclick="loadSupplierSupportForm();">Szállítók karbantartása</a></li>
                                <li><a onclick="loadWarehouseSupportForm();">Raktárak karbantartása</a></li>
                                <li><a href="">Bevételezés</a></li>
                                <li><a href="">Kiadás</a></li>
                            </ul>
                        </li>
                        <li class="with-right-arrow">
                            <span><span class="list-count">3</span>Listák</span>
                            <ul class="big-menu">
                                <li><a onclick="">Készletlista</a></li>
                                <li><a onclick="">Fogyás lista</a></li>
                                <li><a href="">Bizományos fogyás</a></li>
                            </ul>
                        </li>

                    </ul>
                </section>

              <!--Modális ablak-->
              <div id="modal">
                  
              </div>
            </div>
            <!-- End content wrapper -->

            <!-- This is optional -->
            <footer id="menu-footer">


            </footer>

        </section>
        <!-- End sidebar/drop-down menu -->

        <!-- JavaScript at the bottom for fast page loading -->

        <!-- Scripts -->
        <script src="js/libs/jquery-1.10.2.min.js"></script>
        <script src="js/setup.js"></script>

        <!-- Template functions -->
        <script src="js/developr.input.js"></script>
        <script src="js/developr.message.js"></script>
        <script src="js/developr.modal.js"></script>
        <script src="js/developr.navigable.js"></script>
        <script src="js/developr.notify.js"></script>
        <script src="js/developr.scroll.js"></script>
        <script src="js/developr.progress-slider.js"></script>
        <script src="js/developr.tooltip.js"></script>
        <script src="js/developr.confirm.js"></script>
        <script src="js/developr.agenda.js"></script>
        <script src="js/developr.tabs.js"></script>
        <script src="js/developr.content-panel.js"></script>
        <script src="js/developr.table.js"></script>
        <!-- Must be loaded last -->

        <!-- Tinycon -->
        <script src="js/libs/tinycon.min.js"></script>

        <script>

                                    // Call template init (optional, but faster if called manually)
                                    $.template.init();

                                    // Favicon count
                                    Tinycon.setBubble(2);

                                    // If the browser support the Notification API, ask user for permission (with a little delay)
                                    if (notify.hasNotificationAPI() && !notify.isNotificationPermissionSet())
                                    {
                                        setTimeout(function()
                                        {
                                            notify.showNotificationPermission('Your browser supports desktop notification, click here to enable them.', function()
                                            {
                                                // Confirmation message
                                                if (notify.hasNotificationPermission())
                                                {
                                                    notify('Notifications API enabled!', 'You can now see notifications even when the application is in background', {
                                                        icon: '../img/demo/icon.png',
                                                        system: true
                                                    });
                                                }
                                                else
                                                {
                                                    notify('Notifications API disabled!', 'Desktop notifications will not be used.', {
                                                        icon: '../img/demo/icon.png'
                                                    });
                                                }
                                            });

                                        }, 2000);
                                    }

                                    

                                    honapok = new Array("január", "február", "március", "április", "május", "június", "július", "augusztus", "szeptember", "október", "november", "december");
                                    napok = new Array("vasárnap", "hétfő", "kedd", "szerda", "csütörtök", "péntek", "szombat");

                                    function datum_kiir()
                                    {
                                        var Datum = new Date();
                                        var ev = Datum.getFullYear();
                                        var ho = Datum.getMonth();
                                        var nap = Datum.getDate();
                                        var napnev = napok[Datum.getDay()];
                                        $("#datum").html(ev + ". " + honapok[ho] + " " + nap + ". " + napnev);
                                    }
                                    
                                    function loadStockSupportForm(){
                                        $("#main").load("stockSupport.htm"); 
                                    }
                                    
                                    function loadWarehouseSupportForm(){
                                        $("#main").load("warehouseSupport.htm"); 
                                    }
                                    
                                    function loadSupplierSupportForm(){
                                        $("#main").load("supplierSupport.htm"); 
                                    }
                                    
                                    function loadNewStockWindow(){                                                                                
                                        $.modal().loadModalContent("newStock.htm").setModalTitle("Új cikk felvitele").setModalPosition(100,1,true);                                       
                                    }
                                    
                                    function loadNewWarehouseWindow(){                                                                                
                                        $.modal().loadModalContent("newWarehouse.htm").setModalTitle("Új raktár felvitele").setModalPosition(100,1,true);                                       
                                    }
                                    
                                    function loadNewSupplierWindow(){                                                                                
                                        $.modal().loadModalContent("newSupplier.htm").setModalTitle("Új szállító felvitele").setModalPosition(100,1,true);                                       
                                    }

                                    $(document).ready(function() {
                                        datum_kiir();
                                    });






        </script>


    </body>
</html>
