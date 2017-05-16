<head>
  <title><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}></title>
  <meta charset="<{$xoops_charset}>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
  <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>
  <{$xoops_module_header}>
  <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.tpl"}>

  <style type="text/css">
    body{
      font-family:<{$font_family}>;
    }

    #xoops_theme_left_zone{
      <{if $left_separate=='1'}>
        border-right:<{$separate_style}>;
      <{/if}>
    }

    #xoops_theme_right_zone{
      <{if $right_separate=='1'}>
        border-<{if $theme_type=="theme_type_3" or $theme_type=="theme_type_4" or $theme_type=="theme_type_8"}>top<{else}>left<{/if}>:<{$separate_style}>;
      <{/if}>
    }
  </style>

</head>