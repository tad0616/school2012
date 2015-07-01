<?php
$i                           = 0;
$theme_config[$i]['name']    = "show_var";
$theme_config[$i]['text']    = TF_SHOW_VAR;
$theme_config[$i]['desc']    = TF_SHOW_VAR_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//外框是否套用陰影
$i++;
$theme_config[$i]['name']    = "use_shadow";
$theme_config[$i]['text']    = TF_USE_SHADOW;
$theme_config[$i]['desc']    = TF_USE_SHADOW_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "1";

//外框是否包含logo圖
$i++;
$theme_config[$i]['name']    = "shadow_include_logo";
$theme_config[$i]['text']    = TF_USE_SHADOW_LOGO;
$theme_config[$i]['desc']    = TF_USE_SHADOW_LOGO_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "1";

//左區域和主內容間是否加上分隔線
$i++;
$theme_config[$i]['name']    = "left_separate";
$theme_config[$i]['text']    = TF_LEFT_SPARATE;
$theme_config[$i]['desc']    = TF_LEFT_SPARATE_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//右區域和主內容間是否加上分隔線
$i++;
$theme_config[$i]['name']    = "right_separate";
$theme_config[$i]['text']    = TF_RIGHT_SPARATE;
$theme_config[$i]['desc']    = TF_RIGHT_SPARATE_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//左右區域和主內容間的分隔線樣式
$i++;
$theme_config[$i]['name']    = "separate_style";
$theme_config[$i]['text']    = TF_SPARATE_STYLE;
$theme_config[$i]['desc']    = TF_SPARATE_STYLE_DESC;
$theme_config[$i]['type']    = "text";
$theme_config[$i]['default'] = "1px dashed gray";
