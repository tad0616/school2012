<?php
include_once XOOPS_ROOT_PATH . '/modules/tadtools/language/' . $GLOBALS['xoopsConfig']['language'] . '/theme_common.php';

/**自訂設定之語系**/
define("TF_SHOW_VAR", "顯示佈景變數資訊");
define("TF_SHOW_VAR_DESC", "佈景開發時，會顯示所有 tad_themes 提供的控制變數及設定值");

define("TF_USE_SHADOW", "外框是否套用陰影");
define("TF_USE_SHADOW_DESC", "若選是，外框會出現陰影");

define("TF_USE_SHADOW_LOGO", "陰影是否包含logo");
define("TF_USE_SHADOW_LOGO_DESC", "當logo在滑動圖文之上時，是否仍要加上陰影？");

define('TF_LEFT_SPARATE', '左區域分隔線');
define('TF_LEFT_SPARATE_DESC', '左區域和主內容間是否加上分隔線');
define('TF_RIGHT_SPARATE', '右區域分隔線');
define('TF_RIGHT_SPARATE_DESC', '右區域和主內容間是否加上分隔線');
define('TF_SPARATE_STYLE', '左右區域分隔線的樣式');
define('TF_SPARATE_STYLE_DESC', '左右區域分隔線的樣式');
