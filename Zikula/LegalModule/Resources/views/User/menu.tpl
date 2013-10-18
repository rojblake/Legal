{if $templatetitle|default:'' eq ''}
    {gt text='Legal information' assign='templatetitle'}
{/if}
{pagesetvar name='title' value=$templatetitle}

<div class="z-menu">
    {legaluserlinks documentName=$documentName}
</div>

{insert name='getstatusmsg'}

<h2>{$templatetitle}</h2>
