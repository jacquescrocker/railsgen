var resizeWindow = function() {  
  if (jQuery('#body').height() < jQuery(window).height()) {
    jQuery('#body').height(jQuery(window).height());
  }
}

jQuery(document).ready(resizeWindow);
jQuery(window).resize(resizeWindow);
