jQuery(document).ready(function($){$('.option.dropdown-menu').click(function(e){e.stopPropagation();});var c_background='c_background',c_font_size='c_font_size',c_font_family='c_font_family',c_line_height='c_line_height',bg_option=$('#k-truyen-background option').size();if($.cookie(c_background)){setAttr('body',c_background,'background',$.cookie(c_background));($.cookie('index_select')==(bg_option-1))?$('body').addClass('c_background'):$('body').removeClass('c_background');}
if($.cookie(c_font_size)){setAttr('#contents',c_font_size,'font-size',$.cookie(c_font_size));}
if($.cookie(c_font_family)){setAttr('#contents',c_font_family,'font-family',$.cookie(c_font_family));}
if($.cookie(c_line_height)){setAttr('#contents',c_line_height,'line-height',$.cookie(c_line_height));}
$('#k-truyen-background').change(function(){_val=$(this).val();_index=($(this)[0].selectedIndex);setAttr('body',c_background,'background',_val);(_index==(bg_option-1))?$('body').addClass('c_background'):$('body').removeClass('c_background');$.cookie('index_select',_index);});$('#k-truyen-size').change(function(){_val=$(this).val();setAttr('#contents',c_font_size,'font-size',_val);});$('#k-truyen-font').change(function(){_val=$(this).val();setAttr('#contents',c_font_family,'font-family',_val);});$('#k-truyen-lheight').change(function(){_val=$(this).val();setAttr('#contents',c_line_height,'line-height',_val);});function setAttr(id,c_name,attr,value){$(id).css(attr,value);$.cookie(c_name,value);}
var nav=$('.navbar');var navTop=nav.offset().top;$(window).scroll(function(){var winTop=$(this).scrollTop();if(winTop>=navTop){nav.css({'position':'fixed','top':'0','left':'0','z-index':'100','width':'100%'});}else if(winTop<=navTop){nav.attr('style','');}});});