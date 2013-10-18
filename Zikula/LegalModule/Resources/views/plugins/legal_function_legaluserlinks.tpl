{if count($policies) gt 0}
	<ul class="{$class}">
		{foreach name='policyLoop' key='policyName' item='policy' from=$policies}
			<li><a href="{$policy.url}">{$policy.title}</a></li>
		{/foreach}
	</ul>
{/if}