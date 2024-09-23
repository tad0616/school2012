<div id="xoops_theme_header">
  <!-- 導覽列 -->
  <{if $navbar_pos!="navbar-static-bottom"}>
      <{include file="$theme_name/tpl/navbar.tpl"}>
  <{/if}>

  <!-- 滑動圖 -->
  <div class="row">
    <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/slideshow_responsive.tpl"}>
  </div>

  <{if $navbar_pos=="default"}>
    <style>

    #tf-menu2 , #tf-menu2_container{
      background-image: -moz-linear-gradient(top, <{$navbar_bg_top|default:''}>, <{$navbar_bg_bottom|default:''}>);
      background-image: -webkit-linear-gradient(top, <{$navbar_bg_top|default:''}>, <{$navbar_bg_bottom|default:''}>);
      background-image: -o-linear-gradient(top, <{$navbar_bg_top|default:''}>, <{$navbar_bg_bottom|default:''}>);
      background-image: linear-gradient(to bottom, <{$navbar_bg_top|default:''}>, <{$navbar_bg_bottom|default:''}>);
      background-image: -webkit-gradient(linear, 0 0, 0 100%, from(<{$navbar_bg_top|default:''}>), to());
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=<{$navbar_bg_top|default:''}>, endColorstr=<{$navbar_bg_bottom|default:''}>, GradientType=0);
    }

    #tf-menu2 a{
      color:<{$navbar_color|default:''}>;
    }

    #tf-menu2 a:hover{
      color:<{$navbar_color_hover|default:''}>;
    }
    </style>
    <div class="row" id="tf-menu2_container">
      <div id="tf-menu2">
        <{include file="$theme_name/tpl/menu_text.tpl"}>
        <{include file="$theme_name/tpl/loginbar-inline.tpl"}>
      </div>
    </div>
  <{/if}>

  <!-- 導覽列 -->
  <{if $navbar_pos=="navbar-static-bottom"}>
    <{include file="$theme_name/tpl/navbar.tpl"}>
  <{/if}>

</div>
