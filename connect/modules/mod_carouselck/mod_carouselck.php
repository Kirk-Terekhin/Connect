<?php

/**
 * @copyright	Copyright (C) 2014 Cedric KEIFLIN alias ced1870
 * http://www.joomlack.fr
 * http://www.template-creator.com
 * Module Carousel CK
 * @license		GNU/GPL
 * */
// no direct access
defined('_JEXEC') or die;
JHtml::_('behavior.modal');
global $ckjqueryisloaded;

require_once dirname(__FILE__) . '/helper.php';
if ($params->get('carouselckvirtuemart_enable', '0') == '1') {
	if (JFile::exists(JPATH_ROOT . '/plugins/system/carouselckvirtuemart/helper/helper_carouselckvirtuemart.php')) {
		require_once JPATH_ROOT . '/plugins/system/carouselckvirtuemart/helper/helper_carouselckvirtuemart.php';
		$items = modCarouselckvirtuemartHelper::getItems($params);
	} else {
		echo '<p style="color:red;font-weight:bold;">File /plugins/system/carouselckvirtuemart/helper/helper_carouselckvirtuemart.php not found ! Please download the patch for Slideshow CK - Virtuemart on <a href="http://www.joomlack.fr">http://www.joomlack.fr</a></p>';
		return false;
	}
} else if ($params->get('carouselckhikashop_enable', '0') == '1') {
	if (JFile::exists(JPATH_ROOT . '/plugins/system/carouselckhikashop/helper/helper_carouselckhikashop.php')) {
		require_once JPATH_ROOT . '/plugins/system/carouselckhikashop/helper/helper_carouselckhikashop.php';
		$items = modCarouselckhikashopHelper::getItems($params);
	} else {
		echo '<p style="color:red;font-weight:bold;">File /plugins/system/carouselckhikashop/helper/helper_carouselckhikashop.php not found ! Please download the patch for Slideshow CK - Hikashop on <a href="http://www.joomlack.fr">http://www.joomlack.fr</a></p>';
		return false;
	}
} else {
	switch ($params->get('slidesssource', 'slidesmanager')) {
		case 'folder':
		$items = modCarouselckHelper::getItemsFromfolder($params);

			break;
		case 'autoloadfolder':
		$items = modCarouselckHelper::getItemsAutoloadfolder($params);

			break;
		case 'autoloadarticlecategory':
			$items = modCarouselckHelper::getItemsAutoloadarticlecategory($params);
			break;
		default:
		$items = modCarouselckHelper::getItems($params);
			break;
	}

	if ($params->get('displayorder', 'normal') == 'shuffle')
		shuffle($items);
}

$document = JFactory::getDocument();
if ($params->get('loadjquery', '1') && !$ckjqueryisloaded) {
	$document->addScript(JURI::base(true) . '/modules/mod_carouselck/assets/jquery.min.js');
	$ckjqueryisloaded = 1;
}
if ($params->get('loadjqueryeasing', '1')) {
	$document->addScript(JURI::base(true) . '/modules/mod_carouselck/assets/jquery.easing.1.3.js');
}
if ($params->get('loadjquerymobile', '1')) {
	$document->addScript(JURI::base(true) . '/modules/mod_carouselck/assets/jquery.mobile.customized.min.js');
}

$document->addScript(JURI::base(true) . '/modules/mod_carouselck/assets/carouselck.js');

$theme = $params->get('theme', 'default');
$document->addStyleSheet(JURI::base(true) . '/modules/mod_carouselck/themes/default/css/carouselck.css');

if (JFile::exists('modules/mod_carouselck/themes/' . $theme . '/css/carouselck_ie.css')) {
	echo '
		<!--[if lte IE 7]>
		<link href="' . JURI::base(true) . '/modules/mod_carouselck/themes/' . $theme . '/css/carouselck_ie.css" rel="stylesheet" type="text/css" />
		<![endif]-->';
}

if (JFile::exists('modules/mod_carouselck/themes/' . $theme . '/css/carouselck_ie8.css')) {
	echo '
		<!--[if IE 8]>
		<link href="' . JURI::base(true) . '/modules/mod_carouselck/themes/' . $theme . '/css/carouselck_ie8.css" rel="stylesheet" type="text/css" />
		<![endif]-->';
}

// set the navigation variables
switch ($params->get('navigation', '2')) {
	case 0:
		// aucune
		$navigation = "navigationHover: false,
                navigation: false,
                playPause: " . $params->get('playPause', 'true') . ",";
		break;
	case 1:
		// toujours
		$navigation = "navigationHover: false,
                navigation: true,
                playPause: " . $params->get('playPause', 'true') . ",";
		break;
	case 2:
	default:
		// on mouseover
		$navigation = "navigationHover: true,
                navigation: true,
                playPause: " . $params->get('playPause', 'true') . ",";
		break;
}

// load the slideshow script
$js = "<script type=\"text/javascript\"> <!--
       jQuery(function(){
        jQuery('#carouselck_wrap_" . $module->id . "').carouselck({
				wrapheight: '" . $params->get('wrapheight', '40') . "',
				imageheight: '" . $params->get('imageheight', '40') . "',
				imagesratio: '" . $params->get('imagesratio', '0.72') . "',
				pagination: " . $params->get('pagination', '1') . ",
				duration: " . $params->get('duration', '600') . ",
				time: " . $params->get('time', '7000') . ",
				captionduration: " . $params->get('captionduration', '600') . ",
				autoAdvance: " . $params->get('autoAdvance', 'true') . ",
				lightbox: '" . $params->get('lightboxtype', 'mediaboxck') . "',
				" . $navigation . "
				hover: " . $params->get('hover', 'true') . "
        });
}); //--> </script>";

echo $js;

// load some css
$css = "#carouselck_wrap_" . $module->id . " .carouselck_pag_ul li img {width:" . $params->get('thumbnailwidth', '100') . "px;height:" . $params->get('thumbnailheight', '75') . "px;}";

// load the caption styles
$captioncss = modCarouselckHelper::createCss($params, 'captionstyles');
$imagecss = modCarouselckHelper::createCss($params, 'imagestyles');
$fontfamily = ($params->get('captionstylesusefont', '0') && $params->get('captionstylestextgfont', '0')) ? "font-family:'" . $params->get('captionstylestextgfont', 'Droid Sans') . "';" : '';
if ($fontfamily) {
	$gfonturl = str_replace(" ", "+", $params->get('captionstylestextgfont', 'Droid Sans'));
	$document->addStylesheet('https://fonts.googleapis.com/css?family=' . $gfonturl);
}

$css .= "
#carouselck_wrap_" . $module->id . " .carouselck_caption > div {
	" . $captioncss['padding'] . $captioncss['margin'] . $captioncss['background'] . $captioncss['gradient'] . $captioncss['borderradius'] . $captioncss['shadow'] . $captioncss['border'] . "
}
#carouselck_wrap_" . $module->id . " .carouselck_caption > div > div {
	" . $captioncss['fontcolor'] . $captioncss['fontsize'] . "
}
#carouselck_wrap_" . $module->id . " .carouselck_caption > div div.carouselck_caption_desc {
	" . $captioncss['descfontcolor'] . $captioncss['descfontsize'] . "
}
#carouselck_wrap_" . $module->id . " .carouselck_images > img {
	" . $imagecss['padding'] . $imagecss['margin'] . $imagecss['background'] . $imagecss['gradient'] . $imagecss['borderradius'] . $imagecss['shadow'] . $imagecss['border'] . "
}
";
$document->addStyleDeclaration($css);

// display the module
require JModuleHelper::getLayoutPath('mod_carouselck', 'default');