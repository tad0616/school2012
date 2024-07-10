
<{if $xoops_footer}>
  <style>
  #tf-foote a,#tf-foote a:hover,#tf-foote a:active ,#tf-foote a:visited {
    color:<{$footer_color}>;
  }
  </style>
  <div class="row">
    <div id="tf-footer"  style="clear:both;position:relative;margin-bottom:<{$margin_bottom}>px;">
      <{if $xoops_isadmin|default:false}>
        <a href="<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=3" class="block_config"></a>
      <{/if}>
      <div style="padding:60px;">
        <{$xoops_footer}>
      </div>
    </div>
  </div>
<{/if}>