{assign var='templatetitle' value='Privacy policy for '|cat:$modvars.ZConfig.sitename}
{include file=legal_user_menu.tpl}
{include file=$languageCode|cat:'/legal_text_privacypolicy.tpl'}