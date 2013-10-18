{adminheader}
<h3>
    <span class="icon icon-wrench"></span>
    {gt text="Settings"}
</h3>

<p class="alert alert-warning">{gt text='<strong>Important Usage Note</strong>: The provided legal statements are samples only. They need to be adapted to specific needs and locales. You will find the content of the statements in files in the "/modules/Legal/Resources/views/en" directory. These templates can be <a href="http://community.zikula.org/index.php?module=Wiki&tag=TemplateOverridng">replaced</a> by theme templates, or by global templates you would create in the "config/templates/legal/" directory (in the appropriate sub-directory for the language you are writing for).'}</p>

<form id="legal_config" class="form-horizontal" role="form" action="{modurl modname="ZikulaLegalModule" type="admin" func="updateconfig"}" method="post" enctype="application/x-www-form-urlencoded">
	<div>
		<input type="hidden" name="csrftoken" value="{insert name='csrftoken'}" />
		<fieldset>
			<legend>{gt text="Legal document types"}</legend>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_LEGALNOTICE_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Legal notice"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_TERMS_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Terms of use"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_PRIVACY_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Privacy policy"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_TRADECONDITIONS_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="General Terms and Conditions of Trade"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_CANCELLATIONRIGHTPOLICY_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Cancellation Right Policy"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_ACCESSIBILITY_ACTIVE'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Accessibility statement"}</label>
				<input id="legal_{$fieldName}" name="{$fieldName}" type="checkbox" value="1"{if $modvars.ZikulaLegalModule.$fieldName == 1} checked="checked"{/if} />
			</div>
		</fieldset>
		<fieldset>
			<legend>{gt text="Custom urls"}</legend>
			<p>{gt text='The following fields allow to reference any custom url. As soon as an url is given it will be used instead of the normal Legal templates. So you can now use any page you want for displaying and managing your legal data.'}</p>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_LEGALNOTICE_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Legal notice"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_TERMS_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Terms of use"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_PRIVACY_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Privacy policy"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_TRADECONDITIONS_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="General Terms and Conditions of Trade"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_CANCELLATIONRIGHTPOLICY_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Cancellation Right Policy"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
			<div class="form-group">
				{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_ACCESSIBILITY_URL'|constant}
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Accessibility statement"}</label>
				<div class="col-lg-9">
					<input id="legal_{$fieldName}" class="form-control" name="{$fieldName}" type="text" value="{$modvars.ZikulaLegalModule.$fieldName}" />
				</div>
			</div>
		</fieldset>
		<fieldset>
			<legend>{gt text="Further settings"}</legend>
			<div class="form-group">
				<label class="col-lg-3 control-label" for="legal_{$fieldName}">{gt text="Minimum age permitted to register"}<span class="z-form-mandatory-flag">{gt text="*"}</span></label>
				<div class="col-lg-3">
					{assign var='fieldName' value='Zikula\LegalModule\Constant::MODVAR_MINIMUM_AGE'|constant}
						<input id="legal_{$fieldName}"{if isset($errorFields.legal_minage)} class="form-control z-form-error"{else} class="form-control"{/if} type="text" name="{'Zikula\LegalModule\Constant::MODVAR_MINIMUM_AGE'|constant}" value="{$modvars.ZikulaLegalModule.$fieldName|safetext}" size="2" maxlength="2" />
					<em class="help-block">{gt text="Enter a positive integer, or 0 for no age check."}</em>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label" for="legal_resetagreement">{gt text="Reset user group's acceptance of 'Terms of use'"}</label>
				<div class="col-lg-9">
					<select id="legal_resetagreement" class="form-control" name="resetagreement">
						{foreach item=group from=$groups}
						<option value="{$group.gid|safetext}">{$group.name|safetext}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<p class="z-formnote alert alert-info">{gt text="Notice: This setting resets the acceptance of the 'Terms of use' for all users in this group. Next time they want to log-in, they will have to acknowledge their acceptance of them again, and will not be able to log-in if they do not. This action does not affect the main administrator account. You can perform the same operation for individual users by visiting the Users manager in the site admin panel."}</p>
		</fieldset>
		<div class="form-group">
			<div class="col-lg-offset-3 col-lg-9">
				<button class="btn btn-success" title="{gt text="Save"}">
					{gt text="Save"}
				</button>
				<a class="btn btn-danger" href="{modurl modname='ZikulaLegalModule' type='admin' func='main'}" title="{gt text="Cancel"}">{gt text="Cancel"}</a>
			</div>
		</div>
	</div>
    </form>
{adminfooter}