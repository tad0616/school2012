<{if $install_chk|default:false}>
    <div class='alert alert-danger'>
        <{$smarty.const._TAD_DEL_INSTALL_CHK}>
    </div>
<{/if}>


<{if $navbar_pos!="not-use" and $navbar_pos!="default"}>
  <div id="navbar-wrapper" style="z-index:10000;background-color:<{$navbar_bg_top|default:''}>;<{if $navbar_img|default:false}>background-image: url(<{$navbar_img|default:''}>);<{else}>background-image:linear-gradient(to bottom, <{$navbar_bg_top|default:''}>, <{$navbar_bg_bottom|default:''}>);<{/if}>">
    <div class="navbar <{$navbar_pos|default:''}>">
      <div class="navbar-inner" style="border:0px;">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <{if $navbar_logo_img|default:false}>
            <a class="brand" href="<{$xoops_url}>" style="padding: 4px 20px 4px;"><img src=<{$navbar_logo_img|default:''}> alt="<{$xoops_sitename|default:''}>"></a>
          <{elseif $show_sitename==0}>
          <{else}>
            <a class="brand" href="<{$xoops_url}>" style="color:<{$navbar_color|default:''}>"><{$xoops_sitename|default:''}></a>
          <{/if}>

          <div class="nav-collapse collapse" id="main-menu">
            <ul class="nav" id="main-menu-left">
              <{if $show_sitename==0}>
                <li><a href="<{$xoops_url}>" style="color:<{$navbar_color|default:''}>"><{$smarty.const._TAD_HOME}></a></li>
              <{/if}>
              <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_main.tpl"}>
              <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_my.tpl"}>
            </ul>

            <ul class="nav pull-right" id="main-menu-right">
            <{if $xoops_isuser|default:false}>
              <{if $xoops_isadmin|default:false}>
                <{if $xoops_dirname=="" || $xoops_dirname=="system"}>
                  <li><a rel="tooltip" href="<{$xoops_url}>/admin.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><i class="icon-th-large <{$navbar_icon|default:''}>"></i></a></li>
                <{else}>
                  <li><a rel="tooltip" href="<{$xoops_url}>/modules/<{$xoops_dirname|default:''}>/admin/index.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><i class="icon-th-large <{$navbar_icon|default:''}>"></i></a></li>
                <{/if}>
              <{/if}>

              <li class="dropdown" id="preview-menu">
                <a rel="tooltip" title="<{$smarty.const.TF_USER_WELCOME}>" class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <{$smarty.const.TF_USER_WELCOME}><{$xoops_name|default:''}> <b class="caret"></b>
                </a>

                <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_user.tpl"}>

              </li>
            <{else}>
              <li class="dropdown" id="preview-menu">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <{$smarty.const.TF_USER_ENTER}><b class="caret"></b>
                </a>

                <{include file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_login.tpl"}>
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