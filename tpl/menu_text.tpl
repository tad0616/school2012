<{if $xoops_isadmin}>
  <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=1"><img src="<{$xoops_imageurl}>images/block_config.png" alt="<{$smarty.const.TF_SYSTEM_CONFIG}>" title="<{$smarty.const.TF_SYSTEM_CONFIG}>" align="absmiddle" class="block_config" style="margin:auto 8px;"></a>
<{/if}>

<a href="<{$xoops_url}>" alt="<{$xoops_sitename}>" title="<{$xoops_sitename}>" class="logo"><{$xoops_sitename}></a>

<{if $auto_mainmenu}>
  <select style="width:100px;font-size:12px;border:none;border-radius:2px;padding:2px;margin:2px 3px;height:24px;line-height:24px;display:inline;" class="form-control" onChange="location.href=this.value;">
    <{php}>
    global $xoopsDB,$xoopsModule;
      echo "<option value='".XOOPS_URL."'>".THEME_MODULE1."</option>\n";
      $now_dir=isset($xoopsModule) && is_object($xoopsModule) ? $xoopsModule->getVar('dirname') : 'system';
      $sql="select dirname,name from ".$xoopsDB->prefix("modules")." where isactive='1' and hasmain='1' and weight > 0 order by	weight";
      $result = $xoopsDB->query($sql) or redirect_header($_SERVER['PHP_SELF'],3, mysql_error());
      while(list($dirname,$name)=$xoopsDB->fetchRow($result)){
        $selected=($now_dir==$dirname)?"selected":"";
        echo "<option value=\"".XOOPS_URL."/modules/{$dirname}\" $selected>{$name}</option>\n";
      }
    <{/php}>
  </select>
<{/if}>

<{if $xoops_isadmin}>
  <{if $xoops_dirname=="" || $xoops_dirname=="system"}>
    <a href="<{$xoops_url}>/admin.php"><img src="<{$xoops_imageurl}>images/block_config.png" alt="<{$smarty.const.TF_MODULE_CONFIG}>" title="<{$smarty.const.TF_MODULE_CONFIG}>" align="absmiddle" class="block_config"></a>
  <{else}>
    <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/admin/index.php"><img src="<{$xoops_imageurl}>images/block_config.png" alt="<{$smarty.const.TF_MODULE_CONFIG}>" title="<{$smarty.const.TF_MODULE_CONFIG}>" align="absmiddle" class="block_config"></a>
  <{/if}>

<{/if}>