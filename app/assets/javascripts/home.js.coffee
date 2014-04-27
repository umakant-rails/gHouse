# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $(document).on "mouseover", "#up_down_arrow", ->
    is_up_arrow = $(this).hasClass('up-arrow');
    if is_up_arrow
      $(this).removeClass('up-arrow');
      $(this).addClass('down-arrow');
      $("#portfolio_division").show();
    else
      $(this).removeClass('down-arrow');
      $(this).addClass('up-arrow');
      $("#portfolio_division").hide();

  $(document).on "click", "#prtf_cross_sign, #prtf_cross_txt", ->
    $("#portfolio_division").hide();
    $("#up_down_arrow").addClass('up-arrow');
    $("#up_down_arrow").removeClass('down-arrow');

  $(document).on "mouseover", ".head-child-txt", ->
    $(".head-child-txt").each ->
      $(this).removeClass "selected"
      return
      
    $(".properties_by_categories").each ->
      $(this).addClass "hide"
      return

    $(this).addClass "selected"

    properties_category_block_id = $(this).data("div_id")
    $("#"+properties_category_block_id).removeClass "hide" 
