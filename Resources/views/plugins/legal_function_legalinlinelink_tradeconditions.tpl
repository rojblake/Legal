{modurl modname=$module type='user' func='tradeConditions' assign='policyUrl'}
{assign var='customUrl' value='Zikula\LegalModule\Constant::MODVAR_TRADECONDITIONS_URL'|constant}
{assign var='customUrl' value=$modvars.$module.$customUrl}
{if $customUrl ne ''}{assign var='policyUrl' value=$customUrl}{/if}
<a class="legal_inlinelink_tradeconditions" href="{$policyUrl|safetext}" target="{$target}">{gt text='General Terms and Conditions of Trade'}</a>