<{if $xoops_isuser|default:false}>
  <span style="margin: 5px;display:inline;float:right;">
  <{$smarty.const.TF_USER_WELCOME}>&nbsp;&nbsp;<{$xoops_name}>&nbsp;&nbsp;
  <{if $xoops_isadmin|default:false}>
    <a href="<{$xoops_url}>/admin.php" style="color:#CCFF00;"><img src="<{$xoops_imageurl}>images/config.png" alt="<{$smarty.const.TF_USER_ADMIN}>" title="<{$smarty.const.TF_USER_ADMIN}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_ADMIN}></a>

    <a href="<{$xoops_url}>/modules/tad_themes/admin/main.php" style="color:#CCFF00;"><img src="<{$xoops_imageurl}>images/product_design.png" alt="<{$smarty.const.TF_THEME_ADMIN}>" title="<{$smarty.const.TF_THEME_ADMIN}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_THEME_ADMIN}></a>

    <a href="<{$xoops_url}>/modules/tadtools/themes_common/tools/debug.php?op=debug&v=<{$debug}>" style="color:#CCFF00;"><img src="<{$xoops_imageurl}>images/debug.png" alt="<{$smarty.const.TF_THEME_DEBUG}>" title="<{$smarty.const.TF_THEME_DEBUG}>" align="absmiddle" style="margin-right:4px;"><{if $debug=='1'}><{$smarty.const.TF_THEME_DEBUG}><{else}><span style="background:red;color:white;"><{$smarty.const.TF_THEME_UNDEBUG}></span><{/if}></a>

    <a href="<{$xoops_url}>/modules/system/admin.php?fct=blocksadmin" style="color:#CCFF00;"><img src="<{$xoops_imageurl}>images/block_admin.png" alt="<{$smarty.const.TF_USER_BLOCK}>" title="<{$smarty.const.TF_USER_BLOCK}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_BLOCK}></a>

  <{/if}>

  <a href="<{$xoops_url}>/viewpmsg.php"><img src="<{$xoops_imageurl}>images/email.png" alt="<{$smarty.const.TF_USER_MSG}>" title="<{$smarty.const.TF_USER_MSG}>" align="absmiddle" style="margin-right:4px;"><{if $pmcount}><span style="background:yellow;color:black;"><{$smarty.const.TF_USER_NEWMSG}></span><{else}><{$smarty.const.TF_USER_MSG}><{/if}></a>

  <a href="<{$xoops_url}>/notifications.php"><img src="<{$xoops_imageurl}>images/comment.png" alt="<{$smarty.const.TF_USER_NOTICE}>" title="<{$smarty.const.TF_USER_NOTICE}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_NOTICE}></a>

  <a href="<{$xoops_url}>/user.php"><img src="<{$xoops_imageurl}>images/my_account.png" alt="<{$smarty.const.TF_USER_PROFILE}>" title="<{$smarty.const.TF_USER_PROFILE}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_PROFILE}></a>

  <a href="<{$xoops_url}>/user.php?op=logout"><img src="<{$xoops_imageurl}>images/logout.png" alt="<{$smarty.const.TF_USER_EXIT}>" title="<{$smarty.const.TF_USER_EXIT}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_EXIT}></a>
  </span>
<{else}>


  <form action="<{$xoops_url}>/user.php" method="post" class="form-inline pull-right" style="margin-right:10px;">

    <a href="<{$xoops_url}>/register.php"><img src="<{$xoops_imageurl}>images/check.png" alt="<{$smarty.const.TF_USER_REGIST}>" title="<{$smarty.const.TF_USER_REGIST}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_REGIST}></a>
    <a href="<{$xoops_url}>/user.php#lost"><img src="<{$xoops_imageurl}>images/login.png" alt="<{$smarty.const.TF_USER_FORGET_PASS}>" title="<{$smarty.const.TF_USER_FORGET_PASS}>" align="absmiddle" style="margin-right:4px;"><{$smarty.const.TF_USER_FORGET_PASS}></a>

    <div class="form-group">
      <label for="uname" class="sr-only">
        <i class="fa fa-lock" aria-hidden="true"></i> <{$smarty.const.TF_USER_ID}>
      </label>
      <input type="text" name="uname"  id="uname" placeholder="<{$smarty.const.TF_USER_ID}>" class="form-control input-sm" style="width:120px; color: #000;" >
    </div>
    <div class="form-group">
      <label for="pass" class="sr-only">
        <i class="fa fa-lock" aria-hidden="true"></i> <{$smarty.const.TF_USER_PASS}>
      </label>
      <input type="password" name="pass" id="pass" placeholder="<{$smarty.const.TF_USER_PASS}>"  class="form-control input-sm" style="width:120px;color: #000;" />
    </div>


    <div class="form-group">
      <input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>" />
      <input type="hidden" name="op" value="login" />
      <button type="submit" class="btn btn-primary btn-sm"><{$smarty.const.TF_USER_ENTER}></button>
    </div>

  </form>

<{/if}>