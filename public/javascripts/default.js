$(document).ready(function() {
  
  $("#steps .step_hover a").live("mouseover", function() {
    // console.log("IN!"+$(this).attr("data-description-panel"));
    $("#steps .description:visible").hide();
    $("."+$(this).attr("data-description-panel")).show();
  });

  $(".equal-heights").each(function() {
    var maxHeight = 0;
    console.log("FOUND")

    // find max height
    $(this).children().each(function() {
      maxHeight = Math.max($(this).height(), maxHeight);
    });

    console.log("Max height:"+maxHeight);

    // set heights
    $(this).children().each(function() {
      $(this).height(maxHeight);
    });
  });
  
});

