{*
* 2007-2013 PrestaShop
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
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<br />
<fieldset {if isset($ps_version) && ($ps_version < '1.5')}style="width: 400px"{/if}>
	<legend><img src="{$base_url}modules/{$module_name}/logo.gif" alt="" />{l s='PayPal Refund' mod='paypal'}</legend>
	<p><b>{l s='Information:' mod='paypal'}</b> {l s='Payment accepted' mod='paypal'}</p>
	<p><b>{l s='Information:' mod='paypal'}</b> {l s='When you refund a product, a partial refund is made unless you select "Generate a voucher".' mod='paypal'}</p>
	<form method="post" action="{$smarty.server.REQUEST_URI|escape:'htmlall':'UTF-8'}">
		<input type="hidden" name="id_order" value="{$params.id_order|intval}" />
		<p class="center">
			<input type="submit" class="button" name="submitPayPalRefund" value="{l s='Refund total transaction' mod='paypal'}" onclick="if (!confirm('{l s='Are you sure?' mod='paypal'}'))return false;" />
		</p>
	</form>
</fieldset>
