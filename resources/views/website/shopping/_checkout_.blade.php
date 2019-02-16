@extends('website.layouts.website')
@section('title', 'Checkout')
@section('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('cdn.shopify.com/checkout_stylesheet.css') }}">
<style type="text/css">

</style>
@endsection
@section('content')
<div class="container">
	<div class="row">
		<div id="center_column" class="center_column col-md-12">
			<div class="wrap">
				<div class="main" role="main">
					<div class="main__header">
						<a class="logo logo--left" href="https://ap-milk-store-2.myshopify.com">
							<span class="logo__text heading-1">
								AP-MILK-STORE
							</span>
						</a>
						<h1 class="visually-hidden">
							Customer information
						</h1>
						<ul class="breadcrumb ">
							<li class="breadcrumb__item breadcrumb__item--completed">
								<a class="breadcrumb__link" data-trekkie-id="breadcrumb_cart_link" href="https://ap-milk-store-2.myshopify.com/cart">Cart</a>
								<svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
									<use xlink:href="#chevron-right"></use>
								</svg>
							</li>
							<li class="breadcrumb__item breadcrumb__item--current">
								<span class="breadcrumb__text" aria-current="step">Customer information</span>
								<svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
									<use xlink:href="#chevron-right"></use>
								</svg>
							</li>
							<li class="breadcrumb__item breadcrumb__item--blank">
								<span class="breadcrumb__text">Shipping method</span>
								<svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
									<use xlink:href="#chevron-right"></use>
								</svg>
							</li>
							<li class="breadcrumb__item breadcrumb__item--blank">
								<span class="breadcrumb__text">Payment method</span>
							</li>
						</ul>
						<div data-alternative-payments="">
						</div>
					</div>
					<div class="main__content">
						<iframe srcdoc="<script>!function(){var e=function(e){var t={exports:{}};return e.call(t.exports,t,t.exports),t.exports},r=function(){function i(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,&quot;value&quot;in i&amp;&amp;(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(e,t,n){return t&amp;&amp;i(e.prototype,t),n&amp;&amp;i(e,n),e}}(),a=function(e,t){if(!(e instanceof t))throw new TypeError(&quot;Cannot call a class as a function&quot;)},t=function(e){return e&amp;&amp;e.__esModule?e:{&quot;default&quot;:e}},n=e(function(e,t){&quot;use strict&quot;;Object.defineProperty(t,&quot;__esModule&quot;,{value:!0});var n=function(){function e(){var i=this;a(this,e),this.calls=[],window.ga=function(){for(var e=arguments.length,t=Array(e),n=0;n<e;n++)t[n]=arguments[n];return i.gaCall(t)}}return r(e,[{key:&quot;gaCall&quot;,value:function n(e){var t=this;this.calls.push(e),clearTimeout(this.timeout),this.timeout=setTimeout(function(){0<t.calls.length&amp;&amp;t.sendMessage()},0)}},{key:&quot;listen&quot;,value:function i(){var t=this;window.addEventListener(&quot;message&quot;,function(e){return t.receiveMessage(e)},!1)}},{key:&quot;sendMessage&quot;,value:function t(){window.parent.postMessage({type:&quot;analytics&quot;,calls:this.calls},this.origin),this.calls=[]}},{key:&quot;receiveMessage&quot;,value:function o(e){if(e.source===window.parent&amp;&amp;&quot;checkout_context&quot;===e.data.type){this.origin=e.origin,window.Shopify=e.data.Shopify,window.__st=e.data.__st;try{window.additionalScripts()}catch(t){console.error(&quot;User script error: &quot;,t)}}}}]),e}();t[&quot;default&quot;]=n});e(function(){&quot;use strict&quot;;(new(t(n)[&quot;default&quot;])).listen()})}(&quot;undefined&quot;!=typeof global?global:&quot;undefined&quot;!=typeof window&amp;&amp;window);
							window.additionalScripts = function () {
						};
					</script>
					" src="https://checkout.shopify.com/9284804/sandbox/google_analytics_iframe" onload="this.setAttribute('data-loaded', true)" sandbox="allow-scripts" id="google-analytics-sandbox" tabindex="-1" class="visually-hidden" style="display:none" aria-hidden="true" data-loaded="true"></iframe>
					<div class="step" data-step="contact_information">
						<form class="edit_checkout animate-floating-labels" novalidate="novalidate" data-customer-information-form="true" data-email-or-phone="false" action="/9284804/checkouts/a993d686e17fd245c79e2357719f9c3f" accept-charset="UTF-8" method="post">
							<input name="utf8" type="hidden" value="✓"><input type="hidden" name="_method" value="patch"><input type="hidden" name="authenticity_token" value="6k0L9/KD0LSzsFG3tXs9X456raHUoEkfzDiCwXaR+R8YXO7I2KNYiuguBVRdFr8MJm/BoVUyXGbx3Jg+lunefg==">
							<input type="hidden" name="previous_step" id="previous_step" value="contact_information">
							<input type="hidden" name="step" value="shipping_method">
							<div class="step__sections">
								<div class="section section--contact-information">
									<div class="section__header">
										<div class="layout-flex layout-flex--tight-vertical layout-flex--loose-horizontal layout-flex--wrap">
											<h2 class="section__title layout-flex__item layout-flex__item--stretch" id="main-header" tabindex="-1">
												Contact information
											</h2>
											<p class="layout-flex__item">
												<span aria-hidden="true">Already have an account?</span>
												<a data-trekkie-id="have_an_account_login_link" href="https://ap-milk-store-2.myshopify.com/account/login?checkout_url=https%3A%2F%2Fap-milk-store-2.myshopify.com%2F9284804%2Fcheckouts%2Fa993d686e17fd245c79e2357719f9c3f%3Fkey%3Dded88784edeb6774d2adccf43041bb20%26step%3Dcontact_information">
													<span class="visually-hidden">Already have an account?</span>
													Log in
												</a>        
											</p>
										</div>
									</div>
									<div class="section__content" data-section="customer-information" data-shopify-pay-validate-on-load="false">
										<div class="fieldset">
											<div data-shopify-pay-email-flow="false" class="field field--required">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_email">Email</label>
													<input placeholder="Email" autocapitalize="off" spellcheck="false" autocomplete="shipping email" data-trekkie-id="email_field" data-autofocus="true" data-backup="customer_email" aria-describedby="checkout-context-step-one" aria-required="true" class="field__input" size="30" type="email" name="checkout[email]" id="checkout_email">
												</div>
											</div>
										</div>
										<div class="fieldset-description" data-buyer-accepts-marketing="">
											<div class="section__content">
												<div class="checkbox-wrapper">
													<div class="checkbox__input">
														<input name="checkout[buyer_accepts_marketing]" type="hidden" value="0"><input class="input-checkbox" data-backup="buyer_accepts_marketing" data-trekkie-id="buyer_accepts_marketing_field" type="checkbox" value="1" name="checkout[buyer_accepts_marketing]" id="checkout_buyer_accepts_marketing">
													</div>
													<label class="checkbox__label" for="checkout_buyer_accepts_marketing">
														Keep me up to date on news and exclusive offers
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="section section--shipping-address" data-shipping-address="" data-update-order-summary="">
									<div class="section__header">
										<h2 class="section__title">
											Shipping address
										</h2>
									</div>
									<div class="section__content">
										<div class="fieldset" data-address-fields="">
											<input class="visually-hidden" autocomplete="shipping given-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="first_name" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][first_name]">
											<input class="visually-hidden" autocomplete="shipping family-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="last_name" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]">
											<input class="visually-hidden" autocomplete="shipping organization" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="company" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][company]">
											<input class="visually-hidden" autocomplete="shipping address-line1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address1" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][address1]">
											<input class="visually-hidden" autocomplete="shipping address-line2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address2" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][address2]">
											<input class="visually-hidden" autocomplete="shipping address-level2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="city" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]">
											<input class="visually-hidden" autocomplete="shipping country" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="country" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][country]">
											<input class="visually-hidden" autocomplete="shipping address-level1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="province" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][province]">
											<input class="visually-hidden" autocomplete="shipping postal-code" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="zip" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][zip]">
											<input class="visually-hidden" autocomplete="shipping tel" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="phone" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][phone]">
											<div class="field field--optional field--half" data-address-field="first_name">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_first_name">First name (optional)</label>
													<input placeholder="First name (optional)" autocomplete="shipping given-name" data-trekkie-id="shipping_firstname_field" data-backup="first_name" class="field__input" size="30" type="text" name="checkout[shipping_address][first_name]" id="checkout_shipping_address_first_name">
												</div>
											</div>
											<div class="field field--required field--half" data-address-field="last_name">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_last_name">Last name</label>
													<input placeholder="Last name" autocomplete="shipping family-name" data-backup="last_name" data-trekkie-id="shipping_lastname_field" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]" id="checkout_shipping_address_last_name">
												</div>
											</div>
											<div data-address-field="company" data-autocomplete-field-container="true" class="field field--optional">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_company">Company (optional)</label>
													<input placeholder="Company (optional)" autocomplete="shipping organization" data-trekkie-id="shipping_company_field" data-backup="company" class="field__input" size="30" type="text" name="checkout[shipping_address][company]" id="checkout_shipping_address_company">
												</div>
											</div>
											<div data-address-field="address1" data-autocomplete-field-container="true" class="field field--required">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_address1">Address</label>
													<input placeholder="Address" autocomplete="shipping address-line1" autocorrect="off" role="combobox" aria-autocomplete="list" aria-owns="address-autocomplete" aria-expanded="false" aria-required="true" data-backup="address1" data-trekkie-id="shipping_address1_google_autocomplete_field" data-autocomplete-trigger="true" data-autocomplete-title="Suggestions" data-autocomplete-single-item="1 item available" data-autocomplete-multi-item=" items available" data-autocomplete-item-selection=" of " data-autocomplete-close="Close suggestions" class="field__input" size="30" type="text" name="checkout[shipping_address][address1]" id="checkout_shipping_address_address1">
												</div>
											</div>
											<div data-address-field="address2" data-autocomplete-field-container="true" class="field field--optional">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_address2">Apartment, suite, etc. (optional)</label>
													<input placeholder="Apartment, suite, etc. (optional)" autocomplete="shipping address-line2" autocorrect="off" data-trekkie-id="shipping_address2_field" data-backup="address2" class="field__input" size="30" type="text" name="checkout[shipping_address][address2]" id="checkout_shipping_address_address2">
												</div>
											</div>
											<div data-address-field="city" data-autocomplete-field-container="true" class="field field--required">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_city">City</label>
													<input placeholder="City" autocomplete="shipping address-level2" autocorrect="off" data-trekkie-id="shipping_city_field" data-backup="city" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]" id="checkout_shipping_address_city">
												</div>
											</div>
											<div class="field field--required field--half field--show-floating-label" data-address-field="country" data-autocomplete-field-container="true">
												<div class="field__input-wrapper field__input-wrapper--select">
													<label class="field__label field__label--visible" for="checkout_shipping_address_country">Country</label>
													<select size="1" autocomplete="shipping country" data-trekkie-id="shipping_country_field" data-backup="country" class="field__input field__input--select" aria-required="true" name="checkout[shipping_address][country]" id="checkout_shipping_address_country">
														<option data-code="AF" value="Afghanistan">Afghanistan</option>
														<option data-code="AX" value="Aland Islands">Åland Islands</option>
														<option data-code="AL" value="Albania">Albania</option>
														<option data-code="DZ" value="Algeria">Algeria</option>
														<option data-code="AD" value="Andorra">Andorra</option>
														<option data-code="AO" value="Angola">Angola</option>
														<option data-code="AI" value="Anguilla">Anguilla</option>
														<option data-code="AG" value="Antigua And Barbuda">Antigua &amp; Barbuda</option>
														<option data-code="AR" value="Argentina">Argentina</option>
														<option data-code="AM" value="Armenia">Armenia</option>
														<option data-code="AW" value="Aruba">Aruba</option>
														<option data-code="AU" value="Australia">Australia</option>
														<option data-code="AT" value="Austria">Austria</option>
														<option data-code="AZ" value="Azerbaijan">Azerbaijan</option>
														<option data-code="BS" value="Bahamas">Bahamas</option>
														<option data-code="BH" value="Bahrain">Bahrain</option>
														<option data-code="BD" value="Bangladesh">Bangladesh</option>
														<option data-code="BB" value="Barbados">Barbados</option>
														<option data-code="BY" value="Belarus">Belarus</option>
														<option data-code="BE" value="Belgium">Belgium</option>
														<option data-code="BZ" value="Belize">Belize</option>
														<option data-code="BJ" value="Benin">Benin</option>
														<option data-code="BM" value="Bermuda">Bermuda</option>
														<option data-code="BT" value="Bhutan">Bhutan</option>
														<option data-code="BO" value="Bolivia">Bolivia</option>
														<option data-code="BA" value="Bosnia And Herzegovina">Bosnia &amp; Herzegovina</option>
														<option data-code="BW" value="Botswana">Botswana</option>
														<option data-code="BV" value="Bouvet Island">Bouvet Island</option>
														<option data-code="BR" value="Brazil">Brazil</option>
														<option data-code="IO" value="British Indian Ocean Territory">British Indian Ocean Territory</option>
														<option data-code="VG" value="Virgin Islands, British">British Virgin Islands</option>
														<option data-code="BN" value="Brunei">Brunei</option>
														<option data-code="BG" value="Bulgaria">Bulgaria</option>
														<option data-code="BF" value="Burkina Faso">Burkina Faso</option>
														<option data-code="BI" value="Burundi">Burundi</option>
														<option data-code="KH" value="Cambodia">Cambodia</option>
														<option data-code="CM" value="Republic of Cameroon">Cameroon</option>
														<option data-code="CA" value="Canada">Canada</option>
														<option data-code="CV" value="Cape Verde">Cape Verde</option>
														<option data-code="BQ" value="Bonaire, Sint Eustatius and Saba">Caribbean Netherlands</option>
														<option data-code="KY" value="Cayman Islands">Cayman Islands</option>
														<option data-code="CF" value="Central African Republic">Central African Republic</option>
														<option data-code="TD" value="Chad">Chad</option>
														<option data-code="CL" value="Chile">Chile</option>
														<option data-code="CN" value="China">China</option>
														<option data-code="CX" value="Christmas Island">Christmas Island</option>
														<option data-code="CC" value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
														<option data-code="CO" value="Colombia">Colombia</option>
														<option data-code="KM" value="Comoros">Comoros</option>
														<option data-code="CG" value="Congo">Congo - Brazzaville</option>
														<option data-code="CD" value="Congo, The Democratic Republic Of The">Congo - Kinshasa</option>
														<option data-code="CK" value="Cook Islands">Cook Islands</option>
														<option data-code="CR" value="Costa Rica">Costa Rica</option>
														<option data-code="HR" value="Croatia">Croatia</option>
														<option data-code="CU" value="Cuba">Cuba</option>
														<option data-code="CW" value="Curaçao">Curaçao</option>
														<option data-code="CY" value="Cyprus">Cyprus</option>
														<option data-code="CZ" value="Czech Republic">Czech Republic</option>
														<option data-code="CI" value="Côte d'Ivoire">Côte d’Ivoire</option>
														<option data-code="DK" value="Denmark">Denmark</option>
														<option data-code="DJ" value="Djibouti">Djibouti</option>
														<option data-code="DM" value="Dominica">Dominica</option>
														<option data-code="DO" value="Dominican Republic">Dominican Republic</option>
														<option data-code="EC" value="Ecuador">Ecuador</option>
														<option data-code="EG" value="Egypt">Egypt</option>
														<option data-code="SV" value="El Salvador">El Salvador</option>
														<option data-code="GQ" value="Equatorial Guinea">Equatorial Guinea</option>
														<option data-code="ER" value="Eritrea">Eritrea</option>
														<option data-code="EE" value="Estonia">Estonia</option>
														<option data-code="ET" value="Ethiopia">Ethiopia</option>
														<option data-code="FK" value="Falkland Islands (Malvinas)">Falkland Islands</option>
														<option data-code="FO" value="Faroe Islands">Faroe Islands</option>
														<option data-code="FJ" value="Fiji">Fiji</option>
														<option data-code="FI" value="Finland">Finland</option>
														<option data-code="FR" value="France">France</option>
														<option data-code="GF" value="French Guiana">French Guiana</option>
														<option data-code="PF" value="French Polynesia">French Polynesia</option>
														<option data-code="TF" value="French Southern Territories">French Southern Territories</option>
														<option data-code="GA" value="Gabon">Gabon</option>
														<option data-code="GM" value="Gambia">Gambia</option>
														<option data-code="GE" value="Georgia">Georgia</option>
														<option data-code="DE" value="Germany">Germany</option>
														<option data-code="GH" value="Ghana">Ghana</option>
														<option data-code="GI" value="Gibraltar">Gibraltar</option>
														<option data-code="GR" value="Greece">Greece</option>
														<option data-code="GL" value="Greenland">Greenland</option>
														<option data-code="GD" value="Grenada">Grenada</option>
														<option data-code="GP" value="Guadeloupe">Guadeloupe</option>
														<option data-code="GT" value="Guatemala">Guatemala</option>
														<option data-code="GG" value="Guernsey">Guernsey</option>
														<option data-code="GN" value="Guinea">Guinea</option>
														<option data-code="GW" value="Guinea Bissau">Guinea-Bissau</option>
														<option data-code="GY" value="Guyana">Guyana</option>
														<option data-code="HT" value="Haiti">Haiti</option>
														<option data-code="HM" value="Heard Island And Mcdonald Islands">Heard &amp; McDonald Islands</option>
														<option data-code="HN" value="Honduras">Honduras</option>
														<option data-code="HK" value="Hong Kong">Hong Kong SAR China</option>
														<option data-code="HU" value="Hungary">Hungary</option>
														<option data-code="IS" value="Iceland">Iceland</option>
														<option data-code="IN" value="India">India</option>
														<option data-code="ID" value="Indonesia">Indonesia</option>
														<option data-code="IR" value="Iran, Islamic Republic Of">Iran</option>
														<option data-code="IQ" value="Iraq">Iraq</option>
														<option data-code="IE" value="Ireland">Ireland</option>
														<option data-code="IM" value="Isle Of Man">Isle of Man</option>
														<option data-code="IL" value="Israel">Israel</option>
														<option data-code="IT" value="Italy">Italy</option>
														<option data-code="JM" value="Jamaica">Jamaica</option>
														<option data-code="JP" value="Japan">Japan</option>
														<option data-code="JE" value="Jersey">Jersey</option>
														<option data-code="JO" value="Jordan">Jordan</option>
														<option data-code="KZ" value="Kazakhstan">Kazakhstan</option>
														<option data-code="KE" value="Kenya">Kenya</option>
														<option data-code="KI" value="Kiribati">Kiribati</option>
														<option data-code="XK" value="Kosovo">Kosovo</option>
														<option data-code="KW" value="Kuwait">Kuwait</option>
														<option data-code="KG" value="Kyrgyzstan">Kyrgyzstan</option>
														<option data-code="LA" value="Lao People's Democratic Republic">Laos</option>
														<option data-code="LV" value="Latvia">Latvia</option>
														<option data-code="LB" value="Lebanon">Lebanon</option>
														<option data-code="LS" value="Lesotho">Lesotho</option>
														<option data-code="LR" value="Liberia">Liberia</option>
														<option data-code="LY" value="Libyan Arab Jamahiriya">Libya</option>
														<option data-code="LI" value="Liechtenstein">Liechtenstein</option>
														<option data-code="LT" value="Lithuania">Lithuania</option>
														<option data-code="LU" value="Luxembourg">Luxembourg</option>
														<option data-code="MO" value="Macao">Macau SAR China</option>
														<option data-code="MK" value="Macedonia, Republic Of">Macedonia</option>
														<option data-code="MG" value="Madagascar">Madagascar</option>
														<option data-code="MW" value="Malawi">Malawi</option>
														<option data-code="MY" value="Malaysia">Malaysia</option>
														<option data-code="MV" value="Maldives">Maldives</option>
														<option data-code="ML" value="Mali">Mali</option>
														<option data-code="MT" value="Malta">Malta</option>
														<option data-code="MQ" value="Martinique">Martinique</option>
														<option data-code="MR" value="Mauritania">Mauritania</option>
														<option data-code="MU" value="Mauritius">Mauritius</option>
														<option data-code="YT" value="Mayotte">Mayotte</option>
														<option data-code="MX" value="Mexico">Mexico</option>
														<option data-code="MD" value="Moldova, Republic of">Moldova</option>
														<option data-code="MC" value="Monaco">Monaco</option>
														<option data-code="MN" value="Mongolia">Mongolia</option>
														<option data-code="ME" value="Montenegro">Montenegro</option>
														<option data-code="MS" value="Montserrat">Montserrat</option>
														<option data-code="MA" value="Morocco">Morocco</option>
														<option data-code="MZ" value="Mozambique">Mozambique</option>
														<option data-code="MM" value="Myanmar">Myanmar (Burma)</option>
														<option data-code="NA" value="Namibia">Namibia</option>
														<option data-code="NR" value="Nauru">Nauru</option>
														<option data-code="NP" value="Nepal">Nepal</option>
														<option data-code="NL" value="Netherlands">Netherlands</option>
														<option data-code="AN" value="Netherlands Antilles">Netherlands Antilles</option>
														<option data-code="NC" value="New Caledonia">New Caledonia</option>
														<option data-code="NZ" value="New Zealand">New Zealand</option>
														<option data-code="NI" value="Nicaragua">Nicaragua</option>
														<option data-code="NE" value="Niger">Niger</option>
														<option data-code="NG" value="Nigeria">Nigeria</option>
														<option data-code="NU" value="Niue">Niue</option>
														<option data-code="NF" value="Norfolk Island">Norfolk Island</option>
														<option data-code="KP" value="Korea, Democratic People's Republic Of">North Korea</option>
														<option data-code="NO" value="Norway">Norway</option>
														<option data-code="OM" value="Oman">Oman</option>
														<option data-code="PK" value="Pakistan">Pakistan</option>
														<option data-code="PS" value="Palestinian Territory, Occupied">Palestinian Territories</option>
														<option data-code="PA" value="Panama">Panama</option>
														<option data-code="PG" value="Papua New Guinea">Papua New Guinea</option>
														<option data-code="PY" value="Paraguay">Paraguay</option>
														<option data-code="PE" value="Peru">Peru</option>
														<option data-code="PH" value="Philippines">Philippines</option>
														<option data-code="PN" value="Pitcairn">Pitcairn Islands</option>
														<option data-code="PL" value="Poland">Poland</option>
														<option data-code="PT" value="Portugal">Portugal</option>
														<option data-code="QA" value="Qatar">Qatar</option>
														<option data-code="RE" value="Reunion">Réunion</option>
														<option data-code="RO" value="Romania">Romania</option>
														<option data-code="RU" value="Russia">Russia</option>
														<option data-code="RW" value="Rwanda">Rwanda</option>
														<option data-code="WS" value="Samoa">Samoa</option>
														<option data-code="SM" value="San Marino">San Marino</option>
														<option data-code="ST" value="Sao Tome And Principe">São Tomé &amp; Príncipe</option>
														<option data-code="SA" value="Saudi Arabia">Saudi Arabia</option>
														<option data-code="SN" value="Senegal">Senegal</option>
														<option data-code="RS" value="Serbia">Serbia</option>
														<option data-code="SC" value="Seychelles">Seychelles</option>
														<option data-code="SL" value="Sierra Leone">Sierra Leone</option>
														<option data-code="SG" value="Singapore">Singapore</option>
														<option data-code="SX" value="Sint Maarten">Sint Marteen</option>
														<option data-code="SK" value="Slovakia">Slovakia</option>
														<option data-code="SI" value="Slovenia">Slovenia</option>
														<option data-code="SB" value="Solomon Islands">Solomon Islands</option>
														<option data-code="SO" value="Somalia">Somalia</option>
														<option data-code="ZA" value="South Africa">South Africa</option>
														<option data-code="GS" value="South Georgia And The South Sandwich Islands">South Georgia &amp; South Sandwich Islands</option>
														<option data-code="KR" value="South Korea">South Korea</option>
														<option data-code="SS" value="South Sudan">South Sudan</option>
														<option data-code="ES" value="Spain">Spain</option>
														<option data-code="LK" value="Sri Lanka">Sri Lanka</option>
														<option data-code="BL" value="Saint Barthélemy">St. Barthélemy</option>
														<option data-code="SH" value="Saint Helena">St. Helena</option>
														<option data-code="KN" value="Saint Kitts And Nevis">St. Kitts &amp; Nevis</option>
														<option data-code="LC" value="Saint Lucia">St. Lucia</option>
														<option data-code="MF" value="Saint Martin">St. Martin</option>
														<option data-code="PM" value="Saint Pierre And Miquelon">St. Pierre &amp; Miquelon</option>
														<option data-code="VC" value="St. Vincent">St. Vincent &amp; Grenadines</option>
														<option data-code="SD" value="Sudan">Sudan</option>
														<option data-code="SR" value="Suriname">Suriname</option>
														<option data-code="SJ" value="Svalbard And Jan Mayen">Svalbard &amp; Jan Mayen</option>
														<option data-code="SZ" value="Swaziland">Swaziland</option>
														<option data-code="SE" value="Sweden">Sweden</option>
														<option data-code="CH" value="Switzerland">Switzerland</option>
														<option data-code="SY" value="Syria">Syria</option>
														<option data-code="TW" value="Taiwan">Taiwan</option>
														<option data-code="TJ" value="Tajikistan">Tajikistan</option>
														<option data-code="TZ" value="Tanzania, United Republic Of">Tanzania</option>
														<option data-code="TH" value="Thailand">Thailand</option>
														<option data-code="TL" value="Timor Leste">Timor-Leste</option>
														<option data-code="TG" value="Togo">Togo</option>
														<option data-code="TK" value="Tokelau">Tokelau</option>
														<option data-code="TO" value="Tonga">Tonga</option>
														<option data-code="TT" value="Trinidad and Tobago">Trinidad &amp; Tobago</option>
														<option data-code="TN" value="Tunisia">Tunisia</option>
														<option data-code="TR" value="Turkey">Turkey</option>
														<option data-code="TM" value="Turkmenistan">Turkmenistan</option>
														<option data-code="TC" value="Turks and Caicos Islands">Turks &amp; Caicos Islands</option>
														<option data-code="TV" value="Tuvalu">Tuvalu</option>
														<option data-code="UM" value="United States Minor Outlying Islands">U.S. Outlying Islands</option>
														<option data-code="UG" value="Uganda">Uganda</option>
														<option data-code="UA" value="Ukraine">Ukraine</option>
														<option data-code="AE" value="United Arab Emirates">United Arab Emirates</option>
														<option data-code="GB" value="United Kingdom">United Kingdom</option>
														<option data-code="US" value="United States">United States</option>
														<option data-code="UY" value="Uruguay">Uruguay</option>
														<option data-code="UZ" value="Uzbekistan">Uzbekistan</option>
														<option data-code="VU" value="Vanuatu">Vanuatu</option>
														<option data-code="VA" value="Holy See (Vatican City State)">Vatican City</option>
														<option data-code="VE" value="Venezuela">Venezuela</option>
														<option data-code="VN" selected="selected" value="Vietnam">Vietnam</option>
														<option data-code="WF" value="Wallis And Futuna">Wallis &amp; Futuna</option>
														<option data-code="EH" value="Western Sahara">Western Sahara</option>
														<option data-code="YE" value="Yemen">Yemen</option>
														<option data-code="ZM" value="Zambia">Zambia</option>
														<option data-code="ZW" value="Zimbabwe">Zimbabwe</option>
													</select>
													<div class="field__caret">
														<svg class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-10 field__caret-svg" aria-hidden="true" focusable="false">
															<use xlink:href="#caret-down"></use>
														</svg>
													</div>
												</div>
											</div>
											<div class="field--third field field--required hidden" data-address-field="province" data-autocomplete-field-container="true">
												<div class="field__input-wrapper field__input-wrapper--select">
													<label class="field__label field__label--visible" for="checkout_shipping_address_province">Region</label>
													<input placeholder="Region" autocomplete="shipping address-level1" data-trekkie-id="shipping_province_field" data-backup="province" class="field__input" aria-required="true" type="text" name="checkout[shipping_address][province]" id="checkout_shipping_address_province" disabled="disabled" hidden="hidden">
													<div class="field__caret shown-if-js">
														<svg class="icon-svg icon-svg--color-adaptive-lighter icon-svg--size-10 field__caret-svg" aria-hidden="true" focusable="false">
															<use xlink:href="#caret-down"></use>
														</svg>
													</div>
												</div>
											</div>
											<div class="field field--required field--half" data-address-field="zip" data-autocomplete-field-container="true">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_zip">Postal code</label>
													<input placeholder="Postal code" autocomplete="shipping postal-code" data-backup="zip" data-trekkie-id="shipping_zip_google_autocomplete_field" data-autocomplete-trigger="true" data-autocomplete-title="Suggestions" data-autocomplete-single-item="1 item available" data-autocomplete-multi-item=" items available" data-autocomplete-item-selection=" of " data-autocomplete-close="Close suggestions" class="field__input field__input--zip" aria-required="true" size="30" type="text" name="checkout[shipping_address][zip]" id="checkout_shipping_address_zip">
												</div>
											</div>
											<div data-address-field="phone" class="field field--optional">
												<div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_phone">Phone (optional)</label>
													<input placeholder="Phone (optional)" autocomplete="shipping tel" data-backup="phone" data-trekkie-id="shipping_phone_field" data-phone-formatter="true" data-phone-formatter-country-select="[name='checkout[shipping_address][country]']" class="field__input field__input--numeric" size="30" type="tel" name="checkout[shipping_address][phone]" id="checkout_shipping_address_phone">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="section section--half-spacing-top section--optional">
									<div class="section__content">
										<div class="checkbox-wrapper">
											<div class="checkbox__input">
												<input size="30" type="hidden" name="checkout[remember_me]">
												<input name="checkout[remember_me]" type="hidden" value="0"><input class="input-checkbox" data-backup="remember_me" data-trekkie-id="remember_me_field" type="checkbox" value="1" name="checkout[remember_me]" id="checkout_remember_me">
											</div>
											<label class="checkbox__label" for="checkout_remember_me">
												Save this information for next time
											</label>          
										</div>
									</div>
								</div>
							</div>
							<div class="step__footer" data-step-footer="">
								<button name="button" type="submit" class="step__footer__continue-btn btn " data-trekkie-id="continue_to_shipping_method_button" aria-busy="false">
									<span class="btn__content">
										Continue to shipping method
									</span>
									<svg class="icon-svg icon-svg--size-18 btn__spinner icon-svg--spinner-button" aria-hidden="true" focusable="false">
										<use xlink:href="#spinner-button"></use>
									</svg>
								</button>
								<a class="step__footer__previous-link" data-trekkie-id="previous_step_link" href="https://ap-milk-store-2.myshopify.com/cart">
									<svg focusable="false" aria-hidden="true" class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
										<path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4"></path>
									</svg>
									<span class="step__footer__previous-link-content">Return to cart</span>
								</a>
							</div>
							<input type="hidden" name="checkout[client_details][browser_width]" value="1287"><input type="hidden" name="checkout[client_details][browser_height]" value="697"><input type="hidden" name="checkout[client_details][javascript_enabled]" value="1">
						</form>
					</div>
					<span class="visually-hidden" id="forwarding-external-new-window-message">
						Opens external website in a new window.
					</span>
					<span class="visually-hidden" id="forwarding-new-window-message">
						Opens in a new window.
					</span>
					<span class="visually-hidden" id="forwarding-external-message">
						Opens external website.
					</span>
					<span class="visually-hidden" id="checkout-context-step-one">
						Customer information - AP-MILK-STORE - Checkout
					</span>
				</div>
				<div class="main__footer">
					<div role="contentinfo" aria-label="Footer">
						<p class="copyright-text">
							All rights reserved AP-MILK-STORE
						</p>
					</div>
				</div>
			</div>
			<div class="sidebar" role="complementary">
				<div class="sidebar__header">
					<a class="logo logo--left" href="https://ap-milk-store-2.myshopify.com">
						<span class="logo__text heading-1">
							AP-MILK-STORE
						</span>
					</a>
					<h1 class="visually-hidden">
						Customer information
					</h1>
				</div>
				<div class="sidebar__content">
					<div id="order-summary" class="order-summary order-summary--is-collapsed" data-order-summary="">
						<h2 class="visually-hidden-if-js">Order summary</h2>
						<div class="order-summary__sections">
							<div class="order-summary__section order-summary__section--product-list order-summary__section--is-scrollable">
								<div class="order-summary__section__content">
									<table class="product-table">
										<caption class="visually-hidden">Shopping cart</caption>
										<thead>
											<tr>
												<th scope="col"><span class="visually-hidden">Product image</span></th>
												<th scope="col"><span class="visually-hidden">Description</span></th>
												<th scope="col"><span class="visually-hidden">Quantity</span></th>
												<th scope="col"><span class="visually-hidden">Price</span></th>
											</tr>
										</thead>
										<tbody data-order-summary-section="line-items">
											<tr class="product" data-product-id="1119718276" data-variant-id="4214855428" data-product-type="Shirt" data-customer-ready-visible="">
												<td class="product__image">
													<div class="product-thumbnail">
														<div class="product-thumbnail__wrapper">
															<img alt="Egestas lorem commodo libero quis enim vehicula - N / blue" class="product-thumbnail__image" src="//cdn.shopify.com/s/files/1/0928/4804/products/p17_small.jpg?14284209338850415944">
														</div>
														<span class="product-thumbnail__quantity" aria-hidden="true">3</span>
													</div>
												</td>
												<td class="product__description">
													<span class="product__description__name order-summary__emphasis">Egestas lorem commodo libero quis enim vehicula</span>
													<span class="product__description__variant order-summary__small-text">N / blue</span>
												</td>
												<td class="product__quantity visually-hidden">
													3
												</td>
												<td class="product__price">
													<span class="order-summary__emphasis">$120.00</span>
												</td>
											</tr>
											<tr class="product" data-product-id="1119718276" data-variant-id="4214855172" data-product-type="Shirt" data-customer-ready-visible="">
												<td class="product__image">
													<div class="product-thumbnail">
														<div class="product-thumbnail__wrapper">
															<img alt="Egestas lorem commodo libero quis enim vehicula - M / red" class="product-thumbnail__image" src="//cdn.shopify.com/s/files/1/0928/4804/products/p17_small.jpg?14284209338850415944">
														</div>
														<span class="product-thumbnail__quantity" aria-hidden="true">1</span>
													</div>
												</td>
												<td class="product__description">
													<span class="product__description__name order-summary__emphasis">Egestas lorem commodo libero quis enim vehicula</span>
													<span class="product__description__variant order-summary__small-text">M / red</span>
												</td>
												<td class="product__quantity visually-hidden">
													1
												</td>
												<td class="product__price">
													<span class="order-summary__emphasis">$40.00</span>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="order-summary__scroll-indicator" aria-hidden="true" tabindex="-1">
										Scroll for more items
										<svg aria-hidden="true" focusable="false" class="icon-svg icon-svg--size-12">
											<use xlink:href="#down-arrow"></use>
										</svg>
									</div>
								</div>
							</div>
							<div class="order-summary__section order-summary__section--total-lines" data-order-summary-section="payment-lines">
								<table class="total-line-table">
									<caption class="visually-hidden">Cost summary</caption>
									<thead>
										<tr>
											<th scope="col"><span class="visually-hidden">Description</span></th>
											<th scope="col"><span class="visually-hidden">Price</span></th>
										</tr>
									</thead>
									<tbody class="total-line-table__tbody">
										<tr class="total-line total-line--subtotal">
											<th class="total-line__name" scope="row">Subtotal</th>
											<td class="total-line__price">
												<span class="order-summary__emphasis" data-checkout-subtotal-price-target="16000">
													$160.00
												</span>
											</td>
										</tr>
										<tr class="total-line total-line--shipping">
											<th class="total-line__name" scope="row">Shipping</th>
											<td class="total-line__price">
												<span class="order-summary__small-text" data-checkout-total-shipping-target="0">
													Calculated at next step
												</span>
											</td>
										</tr>
										<tr class="total-line total-line--taxes " data-checkout-taxes="">
											<th class="total-line__name" scope="row">Taxes</th>
											<td class="total-line__price">
												<span class="order-summary__emphasis" data-checkout-total-taxes-target="1600">$16.00</span>
											</td>
										</tr>
									</tbody>
									<tfoot class="total-line-table__footer">
										<tr class="total-line">
											<th class="total-line__name payment-due-label" scope="row">
												<span class="payment-due-label__total">Total</span>
											</th>
											<td class="total-line__price payment-due">
												<span class="payment-due__currency">USD</span>
												<span class="payment-due__price" data-checkout-payment-due-target="17600">
													$176.00
												</span>
											</td>
										</tr>
									</tfoot>
								</table>
								<div class="visually-hidden" aria-live="polite" aria-atomic="true" role="status">
									Updated total price:
									<span data-checkout-payment-due-target="17600">
										$176.00
									</span>
								</div>
							</div>
						</div>
					</div>
					<div id="partial-icon-symbols" class="icon-symbols" data-tg-refresh="partial-icon-symbols" data-tg-refresh-always="true">
						<svg xmlns="http://www.w3.org/2000/svg">
							<symbol id="caret-down">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
									<path d="M0 3h10L5 8" fill-rule="nonzero"></path>
								</svg>
							</symbol>
							<symbol id="powered-by-google">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 116 15">
									<path fill="#737373" d="M4.025 3.572c1.612 0 2.655 1.283 2.655 3.27 0 1.974-1.05 3.27-2.655 3.27-.902 0-1.63-.393-1.974-1.06h-.09v3.057H.95V3.68h.96v1.054h.094c.404-.726 1.16-1.166 2.02-1.166zm-.24 5.63c1.16 0 1.852-.884 1.852-2.36 0-1.477-.692-2.362-1.846-2.362-1.14 0-1.86.91-1.86 2.362 0 1.447.72 2.36 1.857 2.36zm7.072.91c-1.798 0-2.912-1.243-2.912-3.27 0-2.033 1.114-3.27 2.912-3.27 1.8 0 2.913 1.237 2.913 3.27 0 2.027-1.114 3.27-2.913 3.27zm0-.91c1.196 0 1.87-.866 1.87-2.36 0-1.5-.674-2.362-1.87-2.362-1.195 0-1.87.862-1.87 2.362 0 1.494.675 2.36 1.87 2.36zm12.206-5.518H22.05l-1.244 5.05h-.094L19.3 3.684h-.966l-1.412 5.05h-.094l-1.242-5.05h-1.02L16.336 10h1.02l1.406-4.887h.093L20.268 10h1.025l1.77-6.316zm3.632.78c-1.008 0-1.71.737-1.787 1.856h3.48c-.023-1.12-.69-1.857-1.693-1.857zm1.664 3.9h1.005c-.305 1.085-1.277 1.747-2.66 1.747-1.752 0-2.848-1.262-2.848-3.26 0-1.987 1.113-3.276 2.847-3.276 1.705 0 2.742 1.213 2.742 3.176v.386h-4.542v.047c.053 1.248.75 2.04 1.822 2.04.815 0 1.366-.3 1.63-.857zM31.03 10h1.01V6.086c0-.89.696-1.535 1.657-1.535.2 0 .563.038.645.06V3.6c-.13-.018-.34-.03-.504-.03-.838 0-1.565.434-1.752 1.05h-.094v-.938h-.96V10zm6.915-5.537c-1.008 0-1.71.738-1.787 1.857h3.48c-.023-1.12-.69-1.857-1.693-1.857zm1.664 3.902h1.005c-.304 1.084-1.277 1.746-2.66 1.746-1.752 0-2.848-1.262-2.848-3.26 0-1.987 1.113-3.276 2.847-3.276 1.705 0 2.742 1.213 2.742 3.176v.386h-4.542v.047c.053 1.248.75 2.04 1.822 2.04.815 0 1.366-.3 1.63-.857zm5.01 1.746c-1.62 0-2.657-1.28-2.657-3.266 0-1.98 1.05-3.27 2.654-3.27.878 0 1.622.416 1.98 1.108h.087V1.177h1.008V10h-.96V8.992h-.094c-.4.703-1.15 1.12-2.02 1.12zm.232-5.63c-1.15 0-1.846.89-1.846 2.364 0 1.476.69 2.36 1.846 2.36 1.148 0 1.857-.9 1.857-2.36 0-1.447-.715-2.362-1.857-2.362zm7.875-3.115h1.024v3.123c.23-.3.507-.53.827-.688.32-.16.668-.238 1.043-.238.78 0 1.416.27 1.9.806.49.537.73 1.33.73 2.376 0 .992-.24 1.817-.72 2.473-.48.656-1.145.984-1.997.984-.476 0-.88-.114-1.207-.344-.195-.137-.404-.356-.627-.657v.8h-.97V1.363zm4.02 7.225c.284-.454.426-1.05.426-1.794 0-.66-.142-1.207-.425-1.64-.283-.434-.7-.65-1.25-.65-.48 0-.9.177-1.264.532-.36.356-.542.942-.542 1.758 0 .59.075 1.068.223 1.435.277.694.795 1.04 1.553 1.04.57 0 .998-.227 1.28-.68zM63.4 3.726h1.167c-.148.402-.478 1.32-.99 2.754-.383 1.077-.703 1.956-.96 2.635-.61 1.602-1.04 2.578-1.29 2.93-.25.35-.68.527-1.29.527-.147 0-.262-.006-.342-.017-.08-.012-.178-.034-.296-.065v-.96c.183.05.316.08.4.093.08.012.152.018.215.018.195 0 .338-.03.43-.094.092-.065.17-.144.232-.237.02-.033.09-.193.21-.48.122-.29.21-.506.264-.646l-2.32-6.457h1.196l1.68 5.11 1.694-5.11zM73.994 5.282V6.87h3.814c-.117.89-.416 1.54-.87 1.998-.557.555-1.427 1.16-2.944 1.16-2.35 0-4.184-1.882-4.184-4.217 0-2.332 1.835-4.215 4.184-4.215 1.264 0 2.192.497 2.873 1.135l1.122-1.117C77.04.697 75.77 0 73.99 0c-3.218 0-5.923 2.606-5.923 5.805 0 3.2 2.705 5.804 5.923 5.804 1.738 0 3.048-.57 4.073-1.628 1.05-1.045 1.382-2.522 1.382-3.71 0-.366-.028-.708-.087-.992h-5.37zm10.222-1.29c-2.082 0-3.78 1.574-3.78 3.748 0 2.154 1.698 3.747 3.78 3.747S87.998 9.9 87.998 7.74c0-2.174-1.7-3.748-3.782-3.748zm0 6.018c-1.14 0-2.127-.935-2.127-2.27 0-1.348.983-2.27 2.124-2.27 1.142 0 2.128.922 2.128 2.27 0 1.335-.986 2.27-2.128 2.27zm18.54-5.18h-.06c-.37-.438-1.083-.838-1.985-.838-1.88 0-3.52 1.632-3.52 3.748 0 2.102 1.64 3.747 3.52 3.747.905 0 1.618-.4 1.988-.852h.06v.523c0 1.432-.773 2.2-2.012 2.2-1.012 0-1.64-.723-1.9-1.336l-1.44.593c.414.994 1.51 2.213 3.34 2.213 1.94 0 3.58-1.135 3.58-3.902v-6.74h-1.57v.645zm-1.9 5.18c-1.144 0-2.013-.968-2.013-2.27 0-1.323.87-2.27 2.01-2.27 1.13 0 2.012.967 2.012 2.282.006 1.31-.882 2.258-2.01 2.258zM92.65 3.992c-2.084 0-3.783 1.574-3.783 3.748 0 2.154 1.7 3.747 3.782 3.747 2.08 0 3.78-1.587 3.78-3.747 0-2.174-1.7-3.748-3.78-3.748zm0 6.018c-1.143 0-2.13-.935-2.13-2.27 0-1.348.987-2.27 2.13-2.27 1.14 0 2.126.922 2.126 2.27 0 1.335-.986 2.27-2.127 2.27zM105.622.155h1.628v11.332h-1.628m6.655-1.477c-.843 0-1.44-.38-1.83-1.135l5.04-2.07-.168-.426c-.314-.84-1.274-2.39-3.227-2.39-1.94 0-3.554 1.516-3.554 3.75 0 2.1 1.595 3.745 3.736 3.745 1.725 0 2.724-1.05 3.14-1.658l-1.285-.852c-.427.62-1.01 1.032-1.854 1.032zm-.117-4.612c.668 0 1.24.342 1.427.826l-3.405 1.4c0-1.574 1.122-2.226 1.978-2.226z"></path>
								</svg>
							</symbol>
							<symbol id="close">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
									<path d="M15.1 2.3L13.7.9 8 6.6 2.3.9.9 2.3 6.6 8 .9 13.7l1.4 1.4L8 9.4l5.7 5.7 1.4-1.4L9.4 8"></path>
								</svg>
							</symbol>
							<symbol id="spinner-button">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
									<path d="M20 10c0 5.523-4.477 10-10 10S0 15.523 0 10 4.477 0 10 0v2c-4.418 0-8 3.582-8 8s3.582 8 8 8 8-3.582 8-8h2z"></path>
								</svg>
							</symbol>
							<symbol id="chevron-right">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
									<path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4"></path>
								</svg>
							</symbol>
							<symbol id="down-arrow">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 12 12">
									<path d="M10.817 7.624l-4.375 4.2c-.245.235-.64.235-.884 0l-4.375-4.2c-.244-.234-.244-.614 0-.848.245-.235.64-.235.884 0L5.375 9.95V.6c0-.332.28-.6.625-.6s.625.268.625.6v9.35l3.308-3.174c.122-.117.282-.176.442-.176.16 0 .32.06.442.176.244.234.244.614 0 .848"></path>
								</svg>
							</symbol>
						</svg>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
@endsection
@section('scripts')
<script type="text/javascript" src="{{ asset('cdn.shopify.com/checkout_countries.js') }}"></script>
<script type="text/javascript" src="{{ asset('cdn.shopify.com/checkout.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
@endsection