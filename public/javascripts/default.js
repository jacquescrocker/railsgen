var resizeWindow = function() {  
  jQuery('#body').height(Math.max(jQuery(window).height(), jQuery('#content_container').outerHeight()));
}

jQuery(document).ready(resizeWindow);
jQuery(window).resize(resizeWindow);
