<?php
$i=0;
$theme_config[$i]['name']="show_var";
$theme_config[$i]['text']=TF_SHOW_VAR;
$theme_config[$i]['desc']=TF_SHOW_VAR_DESC;
$theme_config[$i]['type']="yesno";
$theme_config[$i]['default']="0";

//外框是否套用陰影
$i++;
$theme_config[$i]['name']="use_shadow";
$theme_config[$i]['text']=TF_USE_SHADOW;
$theme_config[$i]['desc']=TF_USE_SHADOW_DESC;
$theme_config[$i]['type']="yesno";
$theme_config[$i]['default']="1";

//外框是否包含logo圖
$i++;
$theme_config[$i]['name']="shadow_include_logo";
$theme_config[$i]['text']=TF_USE_SHADOW_LOGO;
$theme_config[$i]['desc']=TF_USE_SHADOW_LOGO_DESC;
$theme_config[$i]['type']="yesno";
$theme_config[$i]['default']="1";
?>
