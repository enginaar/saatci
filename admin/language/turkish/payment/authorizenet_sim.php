<?php
//Türkçeye Çeviri : www.tr-opencart.com

// Heading
$_['heading_title']      	= 'Authorize.Net (SIM)';

// Text 
$_['text_payment']       	= 'Ödeme Metodları';
$_['text_success']      	= 'Başarılı: Authorize.Net hesap detayları başarılı bir şekilde değiştirildi!';
$_['text_edit']                     = 'Edit Authorize.Net (SIM)';
$_['text_authorizenet_sim']			= '<a onclick="window.open(\'http://reseller.authorize.net/application/?id=5561103\');"><img src="view/image/payment/authorizenet.png" alt="Authorize.Net" title="Authorize.Net" style="border: 1px solid #EEEEEE;" /></a>';

// Entry
$_['entry_merchant']     	= 'Merchant ID:';
$_['entry_key']          	= 'Transaction Key:';
$_['entry_callback']        = 'Relay Response URL:<br /><span class="help">Lütfen burada oturum açın <a href="https://secure.authorize.net" target="_blank" class="txtLink">https://secure.authorize.net</a>.</span>';
$_['entry_md5']						= 'MD5 Hash Value';
$_['entry_test']         	= 'Test Modu:';
$_['entry_total']        	= 'Total:<br /><span class="help">The checkout total the order must reach before this payment method becomes active.</span>';
$_['entry_order_status'] 	= 'Sipariş Durumu:';
$_['entry_geo_zone']     	= 'Genel Bölge:';
$_['entry_status']       	= 'Durumu:';
$_['entry_sort_order']   	= 'Sıralama:';

// Help
$_['help_callback']					= 'Please login and set this at <a href="https://secure.authorize.net" target="_blank" class="txtLink">https://secure.authorize.net</a>.';
$_['help_md5']						= 'The MD5 Hash feature enables you to authenticate that a transaction response is securely received from Authorize.Net.Please login and set this at <a href="https://secure.authorize.net" target="_blank" class="txtLink">https://secure.authorize.net</a>.(Optional)';
$_['help_total']					= 'The checkout total the order must reach before this payment method becomes active.';

// Error
$_['error_permission']				= 'Warning: You do not have permission to modify payment Authorize.Net (SIM)!';
$_['error_merchant']				= 'Merchant ID Required!';
$_['error_key']						= 'Transaction Key Required!';