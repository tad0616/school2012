<!DOCTYPE html>
<html lang="<{$xoops_langcode|default:''}>">

<{assign var="theme_name" value=$xoTheme->folderName}>
<!-- 取得佈景參數 -->
<{* <{include file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}> *}>
<!-- 頁首 -->
<{include file="$theme_name/tpl/head.tpl"}>
<script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
<script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
<script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

  <body>
    <div id="xoops_theme_wrap">
      <!-- 頁面容器 -->

      <div id="xoops_theme_container" style="background:<{$base_color|default:''}>;position:relative;width:<{$theme_width|default:''}>px;margin:<{$margin_top|default:''}>px auto 0 auto;padding:0px;">


        <div id="xoops_theme_content" style="width:auto;" <{if $use_shadow=='1' and $shadow_include_logo=='1'}>class="container xoops_content_shadow"<{/if}>>

          <!-- logo -->
          <{if $logo_img and $logo_position=="page"}>
            <div style="background-color:<{$logo_bgcolor|default:''}>">
              <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/logo.tpl"}>
            </div>
          <{/if}>


          <div id="xoops_theme_content_display" style="width:auto;" <{if $use_shadow=='1' and $shadow_include_logo=='0'}>class="xoops_content_shadow"<{/if}>>

            <!-- 頁首 -->
            <{include file="$theme_name/tpl/header.tpl"}>

            <!-- 載入布局 -->
            <div class="row">
              <div class="col-sm-12">
                  <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
              </div>
            </div>

            <!-- 頁尾 -->
            <{include file="$theme_name/tpl/footer.tpl"}>

          </div>
        </div>
      </div>

      <!-- 載入bootstrap -->
      <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

      <!-- 載入自訂js -->
      <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>
    </div>


    <!-- 顯示參數，開發用，開發完可刪除 -->
    <{if $show_var=='1'}>
      <{include file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>

  </body>
</html>