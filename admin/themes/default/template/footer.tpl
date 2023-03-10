{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

	</div>
</div>
{if $display_footer}
<div id="footer" class="bootstrap hide">

	<div class="col-sm-2 hidden-xs">
		<a href="http://www.prestashop.com/" class="_blank">PrestaShop&trade; {$ps_version}</a>
		-
		<span id="footer-load-time"><i class="icon-time" title="{l s='Load time: '}"></i> {number_format(microtime(true) - $timer_start, 3, '.', '')}s</span>
	</div>

	<div class="col-sm-2 hidden-xs">
		<div class="social-networks">
			<a class="link-social link-twitter _blank" href="https://twitter.com/PrestaShop" title="Twitter">
				<i class="icon-twitter"></i>
			</a>
			<a class="link-social link-facebook _blank" href="https://www.facebook.com/prestashop" title="Facebook">
				<i class="icon-facebook"></i>
			</a>
			<a class="link-social link-github _blank" href="https://www.prestashop.com/github" title="Github">
				<i class="icon-github"></i>
			</a>
			<a class="link-social link-google _blank" href="https://plus.google.com/+prestashop/" title="Google">
				<i class="icon-google-plus"></i>
			</a>
		</div>
	</div>
	<div class="col-sm-5">
		<div class="footer-contact">
			<a href="http://www.prestashop.com/en/contact_us?utm_source=back-office&amp;utm_medium=footer&amp;utm_campaign=back-office-{$lang_iso|upper}&amp;utm_content={if $host_mode}cloud{else}download{/if}" class="footer_link _blank">
				<i class="icon-envelope"></i>
				{l s='Contact'}
			</a>
			/&nbsp;
			<a href="http://forge.prestashop.com/?utm_source=back-office&amp;utm_medium=footer&amp;utm_campaign=back-office-{$lang_iso|upper}&amp;utm_content={if $host_mode}cloud{else}download{/if}" class="footer_link _blank">
				<i class="icon-bug"></i>
				{l s='Bug Tracker'}
			</a>
			/&nbsp;
			<a href="http://www.prestashop.com/forums/?utm_source=back-office&amp;utm_medium=footer&amp;utm_campaign=back-office-{$lang_iso|upper}&amp;utm_content={if $host_mode}cloud{else}download{/if}" class="footer_link _blank">
				<i class="icon-comments"></i>
				{l s='Forum'}
			</a>
			/&nbsp;
			<a href="http://addons.prestashop.com/?utm_source=back-office&amp;utm_medium=footer&amp;utm_campaign=back-office-{$lang_iso|upper}&amp;utm_content={if $host_mode}cloud{else}download{/if}" class="footer_link _blank">
				<i class="icon-puzzle-piece"></i>
				{l s='Addons'}
			</a>
			/&nbsp;
			<a href="http://www.prestashop.com/en/training-prestashop?utm_source=back-office&amp;utm_medium=footer&amp;utm_campaign=back-office-{$lang_iso|upper}&amp;utm_content={if $host_mode}cloud{else}download{/if}" class="footer_link _blank">
				<i class="icon-book"></i>
				{l s='Training'}
			</a>
			{if $iso_is_fr && !host_mode}
			<p>Questions ??? Renseignements ??? Formations :
				<strong>+33 (0)1.40.18.30.04</strong>
			</p>
			{/if}
		</div>
	</div>

	<div class="col-sm-3">
		{hook h="displayBackOfficeFooter"}
	</div>

	<div id="go-top" class="hide"><i class="icon-arrow-up"></i></div>
</div>
{/if}
{if isset($php_errors)}
	{include file="error.tpl"}
{/if}

{if isset($modals)}
<div class="bootstrap">
	{$modals}
</div>
{/if}

</body>
</html>
