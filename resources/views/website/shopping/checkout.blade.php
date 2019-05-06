<!DOCTYPE html>
<html>
<head>
  <title>Checkout</title>
  <link rel="stylesheet" type="text/css" href="{{ asset('cdn.shopify.com/checkout_stylesheet.css') }}">
  <style type="text/css">
  button.step__footer__continue-btn { background: linear-gradient(#ef3959,#d72041); padding: 12px 100px; font-size: 20px; text-transform: uppercase; margin-bottom: 10px;}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
      <div id="center_column" class="center_column col-md-12">
        <div class="wrap">
          <div class="main" role="main" style="padding-top: 50px;">
            <div class="main__header">
              <a class="" href="{{ route('web.homepage') }}">
                <span class="logo__text heading-1">
                  AP-MILK-STORE
                </span>
              </a>
              <h1 class="visually-hidden">
                Thông tin khách hàng
              </h1>
              <ul class="breadcrumb ">
                <li class="breadcrumb__item breadcrumb__item--current">
                  <a class="breadcrumb__link" data-trekkie-id="breadcrumb_cart_link" href="{{ route('web.cart') }}">Giỏ hàng</a>
                  <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                    <use xlink:href="#chevron-right"></use>
                  </svg>
                </li>
                <li class="breadcrumb__item breadcrumb__item--blank">
                  <span class="breadcrumb__text" aria-current="step">Thông tin giao hàng</span>
                  <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                    <use xlink:href="#chevron-right"></use>
                  </svg>
                </li>
                <li class="breadcrumb__item breadcrumb__item--blank">
                  <span class="breadcrumb__text">Vận chuyển</span>
                  <svg class="icon-svg icon-svg--color-adaptive-light icon-svg--size-10 breadcrumb__chevron-icon" aria-hidden="true" focusable="false">
                    <use xlink:href="#chevron-right"></use>
                  </svg>
                </li>
                <li class="breadcrumb__item breadcrumb__item--blank">
                  <span class="breadcrumb__text">Thanh toán</span>
                </li>
              </ul>
              <div data-alternative-payments="">
              </div>
            </div>
            <div class="main__content">
              <div class="step" data-step="contact_information">
                <form class="edit_checkout animate-floating-labels" action="{{ route('web.checkout.store') }}" accept-charset="UTF-8" method="post">
                  {{csrf_field()}}
                  <div class="step__sections">
                      {{-- 
                      <div class="section section--contact-information">
                        <div class="section__header">
                          <div class="layout-flex layout-flex--tight-vertical layout-flex--loose-horizontal layout-flex--wrap">
                            <h2 class="section__title layout-flex__item layout-flex__item--stretch" id="main-header" tabindex="-1">
                              1. Thông tin liên hệ
                            </h2>
                          </div>
                        </div>
                        <div class="section__content" data-section="customer-information" data-shopify-pay-validate-on-load="false">
                          <div class="fieldset">
                            <div data-shopify-pay-email-flow="false" class="field field--required">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_email">Email</label>
                                <input placeholder="Email" autocapitalize="off" spellcheck="false" autocomplete="shipping email" data-trekkie-id="email_field" data-autofocus="true" data-backup="customer_email" aria-describedby="checkout-context-step-one" aria-required="true" class="field__input" size="30" type="email" name="checkout[email]" id="checkout_email" required="">
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
                                Nhận tin tức khuyến mãi về sản phẩm
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      --}}
                      <div class="section section--shipping-address" data-shipping-address="" data-update-order-summary="">
                        <div class="section__header">
                          <h2 class="section__title">
                            1. Thông tin giao hàng
                          </h2>
                        </div>
                        <div class="section__content">
                          <div class="fieldset" data-address-fields="">
                            <input class="visually-hidden" autocomplete="shipping given-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="first_name" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][first_name]">
                            <!-- <input class="visually-hidden" autocomplete="shipping family-name" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="last_name" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]"> -->
                            <!-- <input class="visually-hidden" autocomplete="shipping organization" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="company" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][company]"> -->
                            <input class="visually-hidden" autocomplete="shipping address-line1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address1" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][address1]">
                            <!-- <input class="visually-hidden" autocomplete="shipping address-line2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="address2" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][address2]"> -->
                            <input class="visually-hidden" autocomplete="shipping address-level2" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="city" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]">
                            <!-- <input class="visually-hidden" autocomplete="shipping country" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="country" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][country]"> -->
                            <!-- <input class="visually-hidden" autocomplete="shipping address-level1" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="province" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][province]"> -->
                            <!-- <input class="visually-hidden" autocomplete="shipping postal-code" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="zip" data-honeypot="true" aria-required="true" size="30" type="text" name="checkout[shipping_address][zip]"> -->
                            <input class="visually-hidden" autocomplete="shipping tel" tabindex="-1" aria-hidden="true" aria-label="no-label" data-autocomplete-field="phone" data-honeypot="true" size="30" type="text" name="checkout[shipping_address][phone]">
                            <div class="field field--optional" data-address-field="first_name">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_first_name">Họ và tên</label>
                                <input placeholder="Họ và tên" autocomplete="shipping given-name" data-trekkie-id="shipping_firstname_field" data-backup="first_name" class="field__input" size="30" type="text" name="checkout[shipping_address][first_name]" id="checkout_shipping_address_first_name" required="" value="{{Auth::user()->name}}">
                              </div>
                            </div>
                            <div data-address-field="phone" class="field field--optional">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_phone">Điện thoại liên hệ</label>
                                <input placeholder="Điện thoại liên hệ" autocomplete="shipping tel" data-backup="phone" data-trekkie-id="shipping_phone_field" data-phone-formatter="true" data-phone-formatter-country-select="[name='checkout[shipping_address][country]']" class="field__input field__input--numeric" size="30" type="tel" name="checkout[shipping_address][phone]" id="checkout_shipping_address_phone" required="" value="{{Auth::user()->phone}}">
                              </div>
                            </div>
                            <div data-shopify-pay-email-flow="false" class="field field--required">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_email">Email</label>
                                <input placeholder="Email" autocapitalize="off" spellcheck="false" autocomplete="shipping email" data-trekkie-id="email_field" data-backup="customer_email" aria-describedby="checkout-context-step-one" aria-required="true" class="field__input" size="30" type="email" name="checkout[email]" id="checkout_email" required="" value="{{Auth::user()->email}}">
                              </div>
                            </div>
                            <!-- <div class="field field--required field--half" data-address-field="last_name">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_last_name">Họ đệm</label>
                                 <input placeholder="Họ đệm" autocomplete="shipping family-name" data-backup="last_name" data-trekkie-id="shipping_lastname_field" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]" id="checkout_shipping_address_last_name" required="">
                              </div>
                            </div> -->
                            <!-- <div data-address-field="company" data-autocomplete-field-container="true" class="field field--optional">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_company">Company (optional)</label>
                                <input placeholder="Company (optional)" autocomplete="shipping organization" data-trekkie-id="shipping_company_field" data-backup="company" class="field__input" size="30" type="text" name="checkout[shipping_address][company]" id="checkout_shipping_address_company">
                              </div>
                            </div> -->
                            <div data-address-field="address1" data-autocomplete-field-container="true" class="field field--required">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_address1">Địa chỉ</label>
                                <input placeholder="Địa chỉ" autocomplete="shipping address-line1" autocorrect="off" role="combobox" aria-autocomplete="list" aria-owns="address-autocomplete" aria-expanded="false" aria-required="true" data-backup="address1" data-trekkie-id="shipping_address1_google_autocomplete_field" data-autocomplete-trigger="true" data-autocomplete-title="Suggestions" data-autocomplete-single-item="1 item available" data-autocomplete-multi-item=" items available" data-autocomplete-item-selection=" of " data-autocomplete-close="Close suggestions" class="field__input" size="30" type="text" name="checkout[shipping_address][address1]" id="checkout_shipping_address_address1" required="" value="{{Auth::user()->address}}">
                              </div>
                            </div>
                            <!-- <div data-address-field="address2" data-autocomplete-field-container="true" class="field field--optional">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_address2">Apartment, suite, etc. (optional)</label>
                                <input placeholder="Apartment, suite, etc. (optional)" autocomplete="shipping address-line2" autocorrect="off" data-trekkie-id="shipping_address2_field" data-backup="address2" class="field__input" size="30" type="text" name="checkout[shipping_address][address2]" id="checkout_shipping_address_address2">
                              </div>
                            </div> -->
                            {{-- <div data-address-field="city" data-autocomplete-field-container="true" class="field field--required">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_city">Thành phố</label>
                                <input placeholder="Thành phố" autocomplete="shipping address-level2" autocorrect="off" data-trekkie-id="shipping_city_field" data-backup="city" class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]" data-autofocus="true" id="checkout_shipping_address_city">
                              </div>
                            </div> --}}
                            <div data-address-field="phone" class="field field--optional">
                              <div class="field__input-wrapper"><label class="field__label field__label--visible" for="checkout_shipping_address_phone">Lưu ý dành cho nhân viên giao hàng</label>
                                <textarea placeholder="Lưu ý dành cho nhân viên giao hàng" autocomplete="shipping tel" data-backup="phone" data-trekkie-id="shipping_phone_field" data-phone-formatter="true" data-phone-formatter-country-select="[name='checkout[shipping_address][country]']" class="field__input field__input--numeric" size="30" type="tel" name="note" id="checkout_shipping_address_phone"></textarea>
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
                              Lưu thông tin này cho lần sau
                            </label>          
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="section section--shipping-method">
                      <div class="section__header">
                        <h2 class="section__title" id="main-header" tabindex="-1">
                          2. Phương thức vận chuyển
                        </h2>
                      </div>
                      <div class="section__content">
                        <div class="content-box" data-shipping-methods="">
                          <div class="content-box__row">
                            <div class="radio-wrapper" data-shipping-method="shopify-Standard%20Shipping-10.00">
                              <div class="radio__input">
                                <input class="input-radio" type="radio" id="checkout_shipping_rate_id_shopify-standard20shipping-1000" checked="checked">
                                <!-- <input class="input-radio" data-checkout-total-shipping="$10.00" data-checkout-total-shipping-cents="1000" data-checkout-shipping-rate="$10.00" data-checkout-original-shipping-rate="$10.00" data-checkout-total-taxes="$16.00" data-checkout-total-taxes-cents="1600" data-checkout-total-price="$186.00" data-checkout-total-price-cents="18600" data-checkout-payment-due="$186.00" data-checkout-payment-due-cents="18600" data-checkout-payment-subform="required" data-checkout-subtotal-price="$160.00" data-checkout-subtotal-price-cents="16000" data-backup="shopify-Standard%20Shipping-10.00" aria-label="Standard Shipping. $10.00" type="radio" value="shopify-Standard%20Shipping-10.00" name="checkout[shipping_rate][id]" id="checkout_shipping_rate_id_shopify-standard20shipping-1000" checked="checked"> -->
                              </div>
                              <label class="radio__label" aria-hidden="true" for="checkout_shipping_rate_id_shopify-standard20shipping-1000">
                                <span class="radio__label__primary" data-shipping-method-label-title="Standard Shipping">
                                  Giao hàng tiêu chuẩn
                                </span>
                                <span class="radio__label__accessory">
                                  <span class="content-box__emphasis">
                                    Free Ship
                                  </span>
                                </span>
                              </label>      
                            </div>
                            <!-- /radio-wrapper-->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="section section--shipping-method">
                      <div class="section__header">
                        <h2 class="section__title" id="main-header" tabindex="-1">
                          3. Phương thức thanh toán
                        </h2>
                      </div>
                      <div class="section__content">
                        <div class="content-box" data-shipping-methods="">
                          <div class="content-box__row">
                            <div class="radio-wrapper" >
                              <div class="radio__input">
                                <input class="input-radio" type="radio" id="checkout_shipping_rate_id_shopify-standard20shipping-1000" checked="checked">
                              </div>
                              <label class="radio__label" aria-hidden="true" for="checkout_shipping_rate_id_shopify-standard20shipping-1000">
                                <span class="radio__label__primary content-box__emphasis" data-shipping-method-label-title="Standard Shipping">
                                  Thanh toán tiền mặt khi nhận hàng
                                </span>
                              </label>      
                            </div>
                            <!-- /radio-wrapper-->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="step__footer" data-step-footer="">
                      <button name="button" type="submit" class="step__footer__continue-btn btn ">
                        <span class="btn__content">
                          Đặt mua
                        </span>
                        <svg class="icon-svg icon-svg--size-18 btn__spinner icon-svg--spinner-button" aria-hidden="true" focusable="false">
                          <use xlink:href="#spinner-button"></use>
                        </svg>
                      </button>
                      <a class="step__footer__previous-link" data-trekkie-id="previous_step_link" href="{{ route('web.cart') }}">
                        <svg focusable="false" aria-hidden="true" class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
                          <path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4"></path>
                        </svg>
                        <span class="step__footer__previous-link-content">Quay về giỏ hàng</span>
                      </a>
                    </div>
                    <p style="float: right;">(Xin vui lòng kiểm tra lại đơn hàng trước khi Đặt Mua)</p>
                    <input type="hidden" name="checkout[client_details][browser_width]" value="1287"><input type="hidden" name="checkout[client_details][browser_height]" value="697"><input type="hidden" name="checkout[client_details][javascript_enabled]" value="1">
                  </form>
                </div>
                <!-- <span class="visually-hidden" id="forwarding-external-new-window-message">
                  Opens external website in a new window.
                  </span>
                  <span class="visually-hidden" id="forwarding-new-window-message">
                  Opens in a new window.
                  </span>
                  <span class="visually-hidden" id="forwarding-external-message">
                  Opens external website.
                  </span>
                  <span class="visually-hidden" id="checkout-context-step-one">
                  Thông tin khách hàng - AP-MILK-STORE - Checkout
                </span> -->
              </div>
              <div class="main__footer">
                <div role="contentinfo" aria-label="Footer">
                  <p class="copyright-text">
                    All rights reserved AP-MILK-STORE
                  </p>
                </div>
              </div>
            </div>
            <div class="sidebar" role="complementary" style="padding-top: 50px;">
              <div class="sidebar__header">
                <a class="" href="{{ route('web.homepage') }}">
                  <span class="logo__text heading-1">
                    AP-MILK-STORE
                  </span>
                </a>
                <h1 class="visually-hidden">
                  Thông tin khách hàng
                </h1>
              </div>
              <div class="sidebar__content">
                <div id="order-summary" class="order-summary order-summary--is-collapsed" data-order-summary="">
                  <h2 class="visually-hidden-if-js">Đơn hàng ( {{Cart::count()}} sản phẩm)</h2>
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
                            @foreach($contents as $item)
                            <tr class="product" data-product-id="1119718276" data-variant-id="4214855428" data-product-type="Shirt" data-customer-ready-visible="">
                              <td class="product__image">
                                <div class="product-thumbnail">
                                  <div class="product-thumbnail__wrapper">
                                    <img alt="{{$item->model->name}}" class="product-thumbnail__image" src="{{$item->model->ThumbProduct??asset('cdn.shopify.com/s/files/1/0928/4804/products/p14_large592f.jpg?v=1439571205') }}">
                                  </div>
                                  <span class="product-thumbnail__quantity" aria-hidden="true">{{$item->qty}}</span>
                                </div>
                              </td>
                              <td class="product__description">
                                <span class="product__description__name order-summary__emphasis">{{$item->model->name}}</span>
                                <span class="product__description__variant order-summary__small-text">{{number_format($item->price,0,",",".")}}₫ x {{$item->qty}}</span>
                                @if ($item->options->discount != 0)
                                <span class="product__description__variant order-summary__small-text" style=" text-decoration: line-through; color: gray;">{{number_format($item->options->price_old,0,",",".")}} ₫</span>
                                @endif
                              </td>
                              <td class="product__quantity visually-hidden">
                                3
                              </td>
                              <td class="product__price">
                                <span class="order-summary__emphasis">{{number_format($item->subtotal,0,",",".")}} ₫</span>
                              </td>
                            </tr>
                            @endforeach
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
                            <th class="total-line__name" scope="row">Tạm tính</th>
                            <td class="total-line__price">
                              <span class="order-summary__emphasis" data-checkout-subtotal-price-target="{{$total}} ₫">
                                {{$total}} ₫
                              </span>
                            </td>
                          </tr>
                          <!-- <tr class="total-line total-line--shipping">
                            <th class="total-line__name" scope="row">Phí vận chuyển</th>
                            <td class="total-line__price">
                              <span class="order-summary__small-text" data-checkout-total-shipping-target="0">
                                Tính toán ở bước tiếp theo
                              </span>
                            </td>
                          </tr> -->
                          <tr class="total-line total-line--taxes " data-checkout-taxes="">
                            <th class="total-line__name" scope="row">Phí vận chuyển</th>
                            <td class="total-line__price">
                              <span class="order-summary__emphasis" data-checkout-total-taxes-target="1600">Free Ship</span>
                            </td>
                          </tr>
                        </tbody>
                        <tfoot class="total-line-table__footer">
                          <tr class="total-line">
                            <th class="total-line__name payment-due-label" scope="row">
                              <span class="payment-due-label__total">Thành tiền:</span>
                            </th>
                            <td class="total-line__price payment-due">
                              <span class="payment-due__currency">VNĐ</span>
                              <span class="payment-due__price" data-checkout-payment-due-target="17600">
                                {{$total}} ₫
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
  </body>
  <!-- <script type="text/javascript" src="{ asset('cdn.shopify.com/checkout_countries.js') }}"></script> -->
  <script type="text/javascript" src="{{ asset('cdn.shopify.com/checkout.js') }}"></script>
  <script type="text/javascript">
    $(document).ready(function() {

    });
  </script> 
  </html>