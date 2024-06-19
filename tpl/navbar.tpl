<{if $xoops_isadmin}>
  <{php}>
  if(file_exists(XOOPS_VAR_PATH."/data/install_chk.php")){
    echo "
    <div class='alert alert-error'>
      "._TAD_DEL_INSTALL_CHK."
    </div>
    ";
    unlink(XOOPS_VAR_PATH."/data/install_chk.php");
  }
<{/php}>
<{/if}>


<{if $navbar_pos!="not-use" and $navbar_pos!="default"}>
  <div id="navbar-wrapper" style="z-index:10000;background-color:<{$navbar_bg_top}>;<{if $navbar_img}>background-image: url(<{$navbar_img}>);<{else}>background-image:linear-gradient(to bottom, <{$navbar_bg_top}>, <{$navbar_bg_bottom}>);<{/if}>">
    <div class="navbar <{$navbar_pos}>">
      <div class="navbar-inner" style="border:0px;">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <{if $navbar_logo_img}>
            <a class="brand" href="<{$xoops_url}>" style="padding: 4px 20px 4px;"><img src=<{$navbar_logo_img}> alt="<{$xoops_sitename}>"></a>
          <{elseif $show_sitename==0}>
          <{else}>
            <a class="brand" href="<{$xoops_url}>" style="color:<{$navbar_color}>"><{$xoops_sitename}></a>
          <{/if}>

          <div class="nav-collapse collapse" id="main-menu">
            <ul class="nav" id="main-menu-left">
              <{if $show_sitename==0}>
                <li><a href="<{$xoops_url}>" style="color:<{$navbar_color}>"><{$smarty.const._TAD_HOME}></a></li>
              <{/if}>
              <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu_main.tpl"}>
              <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu_my.tpl"}>
            </ul>

            <ul class="nav pull-right" id="main-menu-right">
            <{if $xoops_isuser}>
              <{if $xoops_isadmin}>
                <{if $xoops_dirname=="" || $xoops_dirname=="system"}>
                  <li><a rel="tooltip" href="<{$xoops_url}>/admin.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><i class="icon-th-large <{$navbar_icon}>"></i></a></li>
                <{else}>
                  <li><a rel="tooltip" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/admin/index.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><i class="icon-th-large <{$navbar_icon}>"></i></a></li>
                <{/if}>
              <{/if}>

              <li class="dropdown" id="preview-menu">
                <a rel="tooltip" title="<{$smarty.const.TF_USER_WELCOME}>" class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <{$smarty.const.TF_USER_WELCOME}><{$xoops_name}> <b class="caret"></b>
                </a>

                <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu_user.tpl"}>

              </li>
            <{else}>
              <li class="dropdown" id="preview-menu">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <{$smarty.const.TF_USER_ENTER}><b class="caret"></b>
                </a>

                <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu_login.tpl"}>
              </li>
            <{/if}>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>


  <script type="text/javascript" src="<{$xoops_url}>/modules/tadtools/jquery.pin/jquery.pin.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $("#navbar-wrapper").pin({
        minWidth: 940
      });
    });
  </script>

<{else}>

<{/if}>