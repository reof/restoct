<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<!--[if IEMobile 7]><html class="no-js iem7 oldie linen"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie linen" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie linen" lang="en"><![endif]-->
<!--[if (IE 9)&!(IEMobile)]><html class="no-js ie9 linen" lang="en"><![endif]-->
<!--[if (gt IE 9)|(gt IEMobile 7)]><!--><html class="no-js linen" lang="en"><!--<![endif]-->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>REOF Kft.</title>
        <meta name="keywords" content="hallókészülék"
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">

	
	<meta name="viewport" content="user-scalable=0, initial-scale=1.0, target-densitydpi=115">

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

	<!-- Additional styles -->
	<link rel="stylesheet" href="css/styles/form.css?v=1">
	<link rel="stylesheet" href="css/styles/switches.css?v=1">

	<!-- Login pages styles -->
	<link rel="stylesheet" media="screen" href="css/login.css?v=1">

	<!-- JavaScript at bottom except for Modernizr -->
	<script src="js/modernizr.custom.js"></script>

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
	<!-- iPhone 5 SPLASHSCREEN (640×1096) -->
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
</head>

<body>

	<div id="container">

		<hgroup id="login-title" class="large-margin-bottom">
			<h1 class="login-title-image">ReStock</h1>
			<h5>&copy; REOF Kft</h5>
		</hgroup>
                <sec:authorize access="isAnonymous()">
                    <form action="j_spring_security_check" id="form-login" method="POST">
			<ul class="inputs black-input large">
				<li><span class="icon-user mid-margin-right"></span><input type="text" name="j_username" id="code" value="" class="input-unstyled" placeholder="Felhasználó" autocomplete="off"></li>
                                <li><span class="icon-user mid-margin-right"></span><input type="text" name="j_password" id="code" value="" class="input-unstyled" placeholder="Kód" autocomplete="off"></li>
                        </ul>

			<button type="submit" class="button glossy full-width huge">OK</button>
                    </form>
                </sec:authorize>

	</div>

	<!-- JavaScript at the bottom for fast page loading -->

	<!-- Scripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/setup.js"></script>

	<!-- Template functions -->
	<script src="js/developr.input.js"></script>
	<script src="js/developr.message.js"></script>
	<script src="js/developr.notify.js"></script>
	<script src="js/developr.tooltip.js"></script>

	<script>

		/*
		 * How do I hook my login script to this?
		 * --------------------------------------
		 *
		 * This script is meant to be non-obtrusive: if the user has disabled javascript or if an error occurs, the login form
		 * works fine without ajax.
		 *
		 * The only part you need to edit is the login script between the EDIT SECTION tags, which does inputs validation
		 * and send data to server. For instance, you may keep the validation and add an AJAX call to the server with the
		 * credentials, then redirect to the dashboard or display an error depending on server return.
		 *
		 * Or if you don't trust AJAX calls, just remove the event.preventDefault() part and let the form be submitted.
		 */

		$(document).ready(function()
		{
			/*
			 * JS login effect
			 * This script will enable effects for the login page
			 */
				// Elements
			var doc = $('html').addClass('js-login'),
				container = $('#container'),
				formLogin = $('#form-login'),

				// If layout is centered
				centered;

			/******* EDIT THIS SECTION *******/

			
			// Handle resizing (mostly for debugging)
			function handleLoginResize()
			{
				// Detect mode
				centered = (container.css('position') === 'absolute');

				// Set min-height for mobile layout
				if (!centered)
				{
					container.css('margin-top', '');
				}
				else
				{
					if (parseInt(container.css('margin-top'), 10) === 0)
					{
						centerForm(false);
					}
				}
			};

			// Register and first call
			$(window).on('normalized-resize', handleLoginResize);
			handleLoginResize();

			/*
			 * Center function
			 * @param boolean animate whether or not to animate the position change
			 * @param string|element|array any jQuery selector, DOM element or set of DOM elements which should be ignored
			 * @return void
			 */
			function centerForm(animate, ignore)
			{
				// If layout is centered
				if (centered)
				{
					var siblings = formLogin.siblings(),
						finalSize = formLogin.outerHeight();

					// Ignored elements
					if (ignore)
					{
						siblings = siblings.not(ignore);
					}

					// Get other elements height
					siblings.each(function(i)
					{
						finalSize += $(this).outerHeight(true);
					});

					// Setup
					container[animate ? 'animate' : 'css']({ marginTop: -Math.round(finalSize/2)+'px' });
				}
			};

			// Initial vertical adjust
			centerForm(false);

			/**
			 * Function to display error messages
			 * @param string message the error to display
			 */
			function displayError(message)
			{
				// Show message
				var message = formLogin.message(message, {
					append: false,
					arrow: 'bottom',
					classes: ['red-gradient'],
					animate: false					// We'll do animation later, we need to know the message height first
				});

				// Vertical centering (where we need the message height)
				centerForm(true, 'fast');

				// Watch for closing and show with effect
				message.on('endfade', function(event)
				{
					// This will be called once the message has faded away and is removed
					centerForm(true, message.get(0));

				}).hide().slideDown('fast');
			}

			/**
			 * Function to display loading messages
			 * @param string message the message to display
			 */
			function displayLoading(message)
			{
				// Show message
				var message = formLogin.message('<strong>'+message+'</strong>', {
					append: false,
					arrow: 'bottom',
					classes: ['blue-gradient', 'align-center'],
					stripes: true,
					darkStripes: false,
					closable: false,
					animate: false					// We'll do animation later, we need to know the message height first
				});

				// Vertical centering (where we need the message height)
				centerForm(true, 'fast');

				// Watch for closing and show with effect
				message.on('endfade', function(event)
				{
					// This will be called once the message has faded away and is removed
					centerForm(true, message.get(0));

				}).hide().slideDown('fast');
			}
		});

		// What about a notification?
		notify('Bejelentkezés', 'Kérem jelentkezzen be!', {
			autoClose: false,
			delay: 2500,
			icon: 'img/demo/icon.png'
		});

	</script>

</body>
</html>
