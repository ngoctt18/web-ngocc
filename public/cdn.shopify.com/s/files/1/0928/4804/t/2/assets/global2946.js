/*
*
* 2015 Apollo Theme
*
*/

//========== PRODUCT PAGE ==========//
Shopify.optionsMap = {};
Shopify.optionsMapQuickview = {};
function updatePricing() {
    //try pattern one before pattern 2
    var regex = /([0-9]+[.|,][0-9]+[.|,][0-9]+)/g;
    var unitPriceTextMatch = $('#ProductPrice span').text().match(regex);
    if (!unitPriceTextMatch) {
        regex = /([0-9]+[.|,][0-9]+)/g;
        unitPriceTextMatch = $('#ProductPrice span').text().match(regex);
    }
    if (unitPriceTextMatch) {
        var unitPriceText = unitPriceTextMatch[0];
        var unitPrice = unitPriceText.replace(/[.|,]/g,'');
        var quantity = parseInt($('#Quantity').val());
        var totalPrice = unitPrice * quantity;
        var totalPriceText = Shopify.formatMoney(totalPrice, window.money_format);
        totalPriceText = totalPriceText.match(regex)[0];
        var regInput = new RegExp(unitPriceText, "g");
        var totalPriceHtml = $('.product .price').html().replace(regInput ,totalPriceText);
        $('.product .total-price span').html(totalPriceHtml);
    }
}
function updatePricingQuickView() {
    
        Currency.convertAll(window.shop_currency, $("#currencies a.selected").data("currency"), "span.money", "money_format")
    
    var regex = /([0-9]+[.|,][0-9]+[.|,][0-9]+)/g;
    var unitPriceTextMatch = jQuery('.quick-view-product .price').text().match(regex);
    if (!unitPriceTextMatch) {
        regex = /([0-9]+[.|,][0-9]+)/g;
        unitPriceTextMatch = jQuery('.quick-view-product .price').text().match(regex);
    }
    if (unitPriceTextMatch) {
        var unitPriceText = unitPriceTextMatch[0];
        var unitPrice = unitPriceText.replace(/[.|,]/g,'');
        var quantity = parseInt(jQuery('.quick-view-product input[name=quantity]').val());
        var totalPrice = unitPrice * quantity;
        var totalPriceText = Shopify.formatMoney(totalPrice, window.money_format);
        totalPriceText = totalPriceText.match(regex)[0];
        var regInput = new RegExp(unitPriceText, "g");
        var totalPriceHtml = jQuery('.quick-view-product .price').html().replace(regInput ,totalPriceText);
        jQuery('.quick-view-product .total-price span').html(totalPriceHtml);
    }
}
function updateOptionsInSelector(t, from) {
    var sel = (from != "quickview") ? "" : ".quick-view-product ";
    switch (t) {
    case 0:
        var n = "root";
        var r = $(from + ".single-option-selector:eq(0)");
        break;
    case 1:
        var n = $(from + ".single-option-selector:eq(0)").val();
        var r = $(from + ".single-option-selector:eq(1)");
        break;
    case 2:
        var n = $(from + ".single-option-selector:eq(0)").val();
        n += " / " + $(from + ".single-option-selector:eq(1)").val();
        var r = $(from + ".single-option-selector:eq(2)")
    }
    var i = r.val();
    r.empty();
    var s = (from != "quickview") ? Shopify.optionsMap[n] : Shopify.optionsMapQuickview[n];
    if(typeof s != "undefined"){
        for (var o = 0; o < s.length; o++) {
            var u = s[o];
            var a = $("<option></option>").val(u).html(u);
            r.append(a)
        }
    }
    $(from + '.swatch[data-option-index="' + t + '"] .swatch-element').each(function() {
        if ($.inArray($(this).attr("data-value"), s) !== -1) {
            $(this).removeClass("soldout").show().find(":radio").removeAttr("disabled", "disabled").removeAttr("checked")
        } else {
            $(this).addClass("soldout").hide().find(":radio").removeAttr("checked").attr("disabled", "disabled")
        }
    });
    if ($.inArray(i, s) !== -1) {
        r.val(i)
    }
    r.trigger("change")
};
function linkOptionSelectors(t) {
    for (var n = 0; n < t.variants.length; n++) {
        var r = t.variants[n];
        if (r.available) {
            Shopify.optionsMap["root"] = Shopify.optionsMap["root"] || [];
            Shopify.optionsMap["root"].push(r.option1);
            Shopify.optionsMap["root"] = Shopify.uniq(Shopify.optionsMap["root"]);
            if (t.options.length > 1) {
                var i = r.option1;
                Shopify.optionsMap[i] = Shopify.optionsMap[i] || [];
                Shopify.optionsMap[i].push(r.option2);
                Shopify.optionsMap[i] = Shopify.uniq(Shopify.optionsMap[i])
            }
            if (t.options.length === 3) {
                var i = r.option1 + " / " + r.option2;
                Shopify.optionsMap[i] = Shopify.optionsMap[i] || [];
                Shopify.optionsMap[i].push(r.option3);
                Shopify.optionsMap[i] = Shopify.uniq(Shopify.optionsMap[i])
            }
        }
    }
    updateOptionsInSelector(0, "detail");
    if (t.options.length > 1)
        updateOptionsInSelector(1);
    if (t.options.length === 3)
        updateOptionsInSelector(2, "detail");
    $(".single-option-selector:eq(0)").change(function() {
        updateOptionsInSelector(1);
        if (t.options.length === 3)
            updateOptionsInSelector(2, "detail");
        return true
    });
    $(".single-option-selector:eq(1)").change(function() {
        if (t.options.length === 3)
            updateOptionsInSelector(2, "detail");
        return true
    });
}
function linkOptionSelectorsQuickview(t) {
    for (var n = 0; n < t.variants.length; n++) {
        var r = t.variants[n];
        if (r.available) {
            Shopify.optionsMapQuickview["root"] = Shopify.optionsMapQuickview["root"] || [];
            Shopify.optionsMapQuickview["root"].push(r.option1);
            Shopify.optionsMapQuickview["root"] = Shopify.uniq(Shopify.optionsMapQuickview["root"]);
            if (t.options.length > 1) {
                var i = r.option1;
                Shopify.optionsMapQuickview[i] = Shopify.optionsMapQuickview[i] || [];
                Shopify.optionsMapQuickview[i].push(r.option2);
                Shopify.optionsMapQuickview[i] = Shopify.uniq(Shopify.optionsMapQuickview[i])
            }
            if (t.options.length === 3) {
                var i = r.option1 + " / " + r.option2;
                Shopify.optionsMapQuickview[i] = Shopify.optionsMapQuickview[i] || [];
                Shopify.optionsMapQuickview[i].push(r.option3);
                Shopify.optionsMapQuickview[i] = Shopify.uniq(Shopify.optionsMapQuickview[i])
            }
        }
    }
    updateOptionsInSelector(0, "quickview");
    if (t.options.length > 1)
        updateOptionsInSelector(1);
    if (t.options.length === 3)
        updateOptionsInSelector(2, "quickview");
    $(".single-option-selector:eq(0)").change(function() {
        updateOptionsInSelector(1);
        if (t.options.length === 3)
            updateOptionsInSelector(2, "quickview");
        return true
    });
    $(".single-option-selector:eq(1)").change(function() {
        if (t.options.length === 3)
            updateOptionsInSelector(2, "quickview");
        return true
    });
}

var responsiveflag = false;
var loadIcon = "//cdn.shopify.com/s/files/1/0928/4804/t/2/assets/loading.gif?2264549637723899300";

$(document).ready(function() {
    $(".swatch :radio").change(function() {
      	var t = $(this).closest(".swatch").attr("data-option-index");
      	var n = $(this).val();
      	$(this).closest("form").find(".single-option-selector").eq(t).val(n).trigger("change")
    });
  	
	
		iniQuickView();
	

    productImage();
    
    	iniWishlist();
	
	responsiveResize();
	$(window).resize(responsiveResize);
  	responsiveProductZoom();
	offCanvas();
	floatHeader();
	floatTopbar();
	backtotop();
	
		panelTool();
	
	changeFloatHeader();
	changeLayoutMode();
	changeHeaderStyle();
  	changeSkinsStyle();
	addFilterEffect();
  	accordionNewletter('disable');
	$(".hover-bimg").mouseenter(function() {
  		$(this).closest('.product-image-container').find('.product_img_link').first().find('img').first().attr('src', $(this).data('bimg'));
	});
    $(".nav-verticalmenu .caret").click(function(e) {
		$(this).closest("li").toggleClass("menu-open");
		e.stopPropagation();
	});
});
function accordionNewletter(status){
 	if(status == 'enable') {
       	if(!$('#newsletter_block').hasClass('accordion')){
          	$('#newsletter_block .title_block').on('click', function(){
              	$(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
          	})
        }
  		$('#newsletter_block').addClass('accordion').find('.block_content').slideUp('fast');
 	}
 	else {
  		$('#newsletter_block .title_block').removeClass('active').off().parent().find('.block_content').removeAttr('style').slideDown('fast');
  		$('#newsletter_block').removeClass('accordion');
 	}
}
//========== END PRODUCT PAGE ==========//
//========== QUICK VIEW ==========//

	var product = {};
	var currentLinkQuickView = '';
	var option1 = '';
	var option2 = '';
    function setButtonNavQuickview() {
      	$("#quickview-nav-button a").hide();
      	$("#quickview-nav-button a").attr("data-index", "");
      	var listProducts = $(currentLinkQuickView).closest(".slide").find("a.quick-view");
      	if(listProducts.length > 0) {
        	var currentPosition = 0;
        	for(var i = 0; i < listProducts.length; i++) {
          		if($(listProducts[i]).data("handle") == $(currentLinkQuickView).data("handle")) {
            		currentPosition = i;
            		break;
          		}
            }
        	if(currentPosition < listProducts.length - 1) {
          		$("#quickview-nav-button .btn-next-product").show();
          		$("#quickview-nav-button .btn-next-product").attr("data-index", currentPosition + 1);
        	}
        	if(currentPosition > 0) {
          		$("#quickview-nav-button .btn-previous-product").show();
          		$("#quickview-nav-button .btn-previous-product").attr("data-index", currentPosition - 1);
        	}
        }
      	$("#quickview-nav-button a").click(function() {
      		$("#quickview-nav-button a").hide();
        	var indexLink = parseInt($(this).data("index"));
        	if(!isNaN(indexLink) && indexLink >= 0) {
          		var listProducts = $(currentLinkQuickView).closest(".slide").find("a.quick-view");
          		if(listProducts.length > 0 && indexLink < listProducts.length) {
              		//$(".quickview-close").trigger("click");
          			$(listProducts[indexLink]).trigger("click");
            	}
        	}
      	});
    }
	function iniQuickView(){
      	$(document).on("click", "#thumblist_quickview li", function() {
            changeImageQuickView($(this).find("img:first-child"), "#product-featured-image-quickview");
        });
		$(document).on('click', '.quick-view', function(e){
			var producthandle = $(this).data("handle");
          	currentLinkQuickView = $(this);
			Shopify.getProduct(producthandle,function(product) {
				var qvhtml = $("#quickview-modal").html();
				$(".quick-view-product").html(qvhtml);
				var quickview= $(".quick-view-product");
				var productdes = product.description.replace(/(<([^>]+)>)/ig,"");
				var featured_image = product.featured_image;
              	//Reset current link quickview and button navigate in Quickview - Disable
              	//setButtonNavQuickview();
				productdes = productdes.split(" ").splice(0,30).join(" ")+"...";
				quickview.find(".view_full_size img").attr("src",featured_image);
				quickview.find(".view_full_size img").attr("alt",product.title);
              	quickview.find(".view_full_size a").attr("title",product.title);
              	quickview.find(".view_full_size a").attr("href",product.url);

				quickview.find(".price").html(Shopify.formatMoney(product.price, window.money_format));
                quickview.find(".product-item").attr("id", "product-" + product.id);
                quickview.find(".variants").attr("id", "product-actions-" + product.id);
				quickview.find(".variants select").attr("id", "product-select-" + product.id);

				quickview.find(".product-info .qwp-name").text(product.title);
              	quickview.find(".product-info .brand").append("<span>Vendor: </span>" + product.vendor);
                if(product.available){
                  	quickview.find(".product-info .availability").append("<p class=\"available instock\">Available</p>");
                }else{
                  	quickview.find(".product-info .availability").append("<p class=\"available outstock\">Unavailable</p>");
                }
				quickview.find(".product-info .product-sku").append("<p>Product Code: <span>"+product.variants[0].sku+"</span></p>");
				quickview.find(".product-description").text(productdes);



                if (product.compare_at_price > product.price) {
                    quickview.find(".compare-price").html(Shopify.formatMoney(product.compare_at_price_max, window.money_format)).show();
                    quickview.find(".price").addClass("on-sale")
                }
                else {
                    quickview.find(".compare-price").html("");
                    quickview.find(".price").removeClass("on-sale")
                }
                if (!product.available) {
                    quickview.find("select, input, .dec, .inc, .variants label").remove();
                    quickview.find(".add_to_cart_detail").text("Sold Out").addClass("disabled").attr("disabled", "disabled");
                  	$(".quantity_wanted_p").css("display", "none");
                }
                else {
                  	quickViewVariantsSwatch(product, quickview);
                }
                $("#quick-view-product").fadeIn(500);

                $(".view_scroll_spacer").removeClass("hidden");
                loadQuickViewSlider(product, quickview);

                $(".quick-view").fadeIn(500);
                if ($(".quick-view .total-price").length > 0) {
                  	$(".quick-view input[name=quantity]").on("change", updatePricingQuickView)
                }
              	updatePricingQuickView();
              	// Setup listeners to add/subtract from the input
                $(".js-qty__adjust").on("click", function() {
                  	var el = $(this),
                      	id = el.data("id"),
                      	qtySelector = el.siblings(".js-qty__num"),
                      	qty = parseInt(qtySelector.val().replace(/\D/g, ''));
                  	var qty = validateQty(qty);
                  	// Add or subtract from the current quantity
                  	if (el.hasClass("js-qty__adjust--plus")) {
                    	qty = qty + 1;
                  	} else {
                    	qty = qty - 1;
                    	if (qty <= 1) qty = 1;
                  	}
                  	// Update the input's number
                  	qtySelector.val(qty);
                  	updatePricingQuickView();
                });
                $(".js-qty__num").on("change", function() {
                  	updatePricingQuickView();
                });
			});
			return false;
		});
	}
	function loadQuickViewSlider(n, r) {
        productImage();
        var loadingImgQuickView = $('.loading-imgquickview');
        var s = Shopify.resizeImage(n.featured_image, "grande");
        r.find(".quickview-featured-image").append('<a href="' + n.url + '"><img src="' + s + '" title="' + n.title + '"/><div style="height: 100%; width: 100%; top:0; left:0 z-index: 2000; position: absolute; display: none; background: url(' + window.loading_url + ') 50% 50% no-repeat;"></div></a>');
        if (n.images.length > 0) {
            var o = r.find(".more-view-wrapper ul");
            for (i in n.images) {
                var u = Shopify.resizeImage(n.images[i], "grande");
                var a = Shopify.resizeImage(n.images[i], "compact");
                var f = '<li><a href="javascript:void(0)" data-imageid="' + n.id + '" data-image="' + n.images[i] + '" data-zoom-image="' + u + '" ><img src="' + a + '" alt="Proimage" /></a></li>';
                o.append(f)
            }
            o.find("a").click(function() {
                var t = r.find("#product-featured-image-quickview");
                if (t.attr("src") != $(this).attr("data-image")) {
                    t.attr("src", $(this).attr("data-image"));
                    loadingImgQuickView.show();
                    t.load(function(t) {
                        loadingImgQuickView.hide();
                        $(this).unbind("load");
                        loadingImgQuickView.hide()
                    })
                }
            });
            o.owlCarousel({
                navigation: true,
                items: 3,
                itemsDesktop: [1199, 3],
                itemsDesktopSmall: [979, 3],
                itemsTablet: [768, 3],
                itemsTabletSmall: [540, 3],
                itemsMobile: [360, 3]
            }).css("visibility", "visible")
        } else {
            r.find(".quickview-more-views").remove();
            r.find(".quickview-more-view-wrapper-jcarousel").remove()
        }
    }
	function updateQuantity(){
		$('.js-qty__adjust').on('click', function() {
			var el = $(this),
				id = el.data('id'),
				qtySelector = el.siblings('.js-qty__num'),
	            qty = parseInt(qtySelector.val().replace(/\D/g, ''));

	        var qty = validateQty(qty);

	        // Add or subtract from the current quantity
	        if (el.hasClass('js-qty__adjust--plus')) {
	          qty = qty + 1;
	        } else {
	          qty = qty - 1;
	          if (qty <= 1) qty = 1;
	        }

	        // Update the input's number
	        qtySelector.val(qty);
          	updatePricing();
      	});
	}
	validateQty = function (qty) {
	    // Make sure we have a valid integer
	    if((parseFloat(qty) == parseInt(qty)) && !isNaN(qty)) {
	      // We have a number!
	    } else {
	      // Not a number. Default to 1.
	      qty = 1;
	    }
	    return qty;
  	};
	var convertToSlug = function (e) {
        return e.toLowerCase().replace(/[^a-z0-9 -]/g, "").replace(/\s+/g, "-").replace(/-+/g, "-")
    }
	var selectCallback = function(variant, selector) {

	};
	function quickViewVariantsSwatch(t, quickview) {
        if (t.variants.length > 1) {
            for (var r = 0; r < t.variants.length; r++) {
                var i = t.variants[r];
                var s = '<option value="' + i.id + '">' + i.title + "</option>";
                quickview.find("form.variants > select").append(s)
            }
          	var ps = "product-select-" + t.id;
            new Shopify.OptionSelectors( ps, {
              	product: t,
              	onVariantSelected: selectCallbackQuickView
            });
          	if (t.options.length == 1) {
              	$(".selector-wrapper:eq(0)").prepend("<label>" + t.options[0].name + "</label>")
            }
          	quickview.find("form.variants .selector-wrapper label").each(function(n, r) {
              	$(this).html(t.options[n].name)
            })
            
        }
        else {
            quickview.find("form.variants > select").remove();
            var v = '<input type="hidden" name="id" value="' + t.variants[0].id + '">';
            quickview.find("form.variants").append(v)
        }
    }
	$(document).on('click', '.quick-view', function(e){
		e.preventDefault();
	});
	$(document).on('click', '.quickview-close, #quick-view-product .quickview-overlay', function(e){
		$("#quick-view-product").fadeOut(500);
	});

function displayImage(domAAroundImgThumb)
{
	if (domAAroundImgThumb.attr('href'))
	{
		var new_src = domAAroundImgThumb.attr('href').replace('1024x1024', 'large');
		var new_title = domAAroundImgThumb.attr('title');
		var new_href = domAAroundImgThumb.attr('href');
		if ($('#bigpic').attr('src') != new_src)
		{
			$('#bigpic').attr({
				'src' : new_src,
				'alt' : new_title,
				'title' : new_title
			});
		}
		$('#views_block li a').removeClass('shown');
		$(domAAroundImgThumb).addClass('shown');
	}
}
function productZoom(status){
  	if(status == 'enable') {
  		$("#proimage").elevateZoom({
          	
          	zoomType: "inner",
            cursor: 'crosshair',
	        
            gallery:'thumbs_list',
            galleryActiveClass: 'active',
            imageCrossfade: true,
          	scrollZoom : true,
          	onImageSwapComplete: function() {
              	$(".zoomWrapper div").hide()
            },
            loadingIcon: loadIcon
        });
        $("#proimage").bind("click", function(e) {
            var ez = $('#proimage').data('elevateZoom');
            $.fancybox(ez.getGalleryList());
            return false;
        });
    }
  	else{
    	$(document).on('click', '#thumblist .thumb_item a', function(){
            if ($(this).attr('href'))
            {
                var new_src = $(this).data('image');
                var new_title = $(this).attr('title');
                var new_href = $(this).attr('href');
                if ($('#proimage').attr('src') != new_src)
                {
                    $('#proimage').attr({
                        'src' : new_src,
                        'alt' : new_title,
                        'title' : new_title
                    });
                }
            }
        });
    }

}
function productImage() {
	$('#thumblist').owlCarousel({
        navigation: true,
        items: 4,
        itemsDesktop: [1199, 4],
        itemsDesktopSmall: [979, 4],
        itemsTablet: [768, 4],
        itemsTabletSmall: [540, 4],
        itemsMobile: [360, 4]
    });
    $('.thumbs_list_frame').height(parseInt($('.thumbs_list_frame >li').outerHeight(true) * $('.thumbs_list_frame >li').height) + 'px');
    $('.thumbs_list').serialScroll({
        items:'li:visible',
        prev:'.view_scroll_left',
        next:'.view_scroll_right',
        axis:'y',
        start:0,
        stop:true,
        duration:700,
        step: 2,
        lazy: true,
        lock: false,
        force:false,
        cycle:false
    });
	if (!!$.prototype.fancybox){
		$('li:visible .fancybox, .fancybox.shown').fancybox({
			'hideOnContentClick': true,
			'openEffect'	: 'elastic',
			'closeEffect'	: 'elastic'
		});
	}
}

	function iniWishlist(){
		$(".wishlist button.btn-wishlist").click(function(e){
			e.preventDefault();
			var d = $(this).parent();
			$.ajax({
				type:"POST",
				url:"/contact",
				data:d.serialize(),
				beforeSend:function(){

				},
				success:function(n){
					d.html('<a class="btn btn-outline-inverse btn-wishlist added" href="/pages/wish-list"><i class="fa fa-heart"></i></a>');
					if (!!$.prototype.fancybox)
						$.fancybox.open([{
							type: 'inline',
							autoScale: true,
							minHeight: 30,
							content: '<p class="fancybox-error">' + 'Added to your wishlist.' + '</p>'
						}], {
							padding: 0
						});
					else
						alert('Added to your wishlist.');
				},
				error:function(){

				}
			})
		});
	}

// Used to compensante Chrome/Safari bug (they don't care about scroll bar for width)
function scrollCompensate()
{
    var inner = document.createElement('p');
    inner.style.width = "100%";
    inner.style.height = "200px";

    var outer = document.createElement('div');
    outer.style.position = "absolute";
    outer.style.top = "0px";
    outer.style.left = "0px";
    outer.style.visibility = "hidden";
    outer.style.width = "200px";
    outer.style.height = "150px";
    outer.style.overflow = "hidden";
    outer.appendChild(inner);

    document.body.appendChild(outer);
    var w1 = inner.offsetWidth;
    outer.style.overflow = 'scroll';
    var w2 = inner.offsetWidth;
    if (w1 == w2) w2 = outer.clientWidth;

    document.body.removeChild(outer);

    return (w1 - w2);
}
function responsiveResize()
{
	compensante = scrollCompensate();
	if (($(window).width()+scrollCompensate()) <= 767 && responsiveflag == false)
	{
      	
      		accordion('enable');
        
	    accordionFooter('enable');
		responsiveflag = true;
	}
	else if (($(window).width()+scrollCompensate()) >= 768)
	{
		accordion('disable');
		accordionFooter('disable');
	    responsiveflag = false;
	}
}
function responsiveProductZoom()
{
	if (($(window).width()) >= 992){
    	productZoom('enable');
    }
  	else if (($(window).width()) <= 991){
  		productZoom('disable');
    }
}
function offCanvas(){
	$('[data-toggle="offcanvas"]').click(function () {
	    var menuCanvas = $(this).data('target');
	    $(this).toggleClass('open');
	    $(menuCanvas).toggleClass('active');
	    $('body').toggleClass('off-canvas-active');
	    var heightCanvas = $(window).height();
	    $(menuCanvas).css({'min-height' : heightCanvas});
  	});
  	$('.off-canvas-nav').click(function () {
  		$('[data-toggle="offcanvas"]').click();
  	});
}
function accordion(status)
{
 	leftColumnBlocks = $('#left_column');
 	if(status == 'enable')
 	{
      	if(!$('#left_column').hasClass('accordion')){
        	$('#left_column .block .title_block').on('click', function(){
   				$(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
  			});
      	}
      	if(!$('#right_column').hasClass('accordion')){
        	$('#right_column .block .title_block').on('click', function(){
   				$(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
  			});
      	}
      	$('#left_column').addClass('accordion').find('.block .block_content').slideUp('fast');
  		$('#right_column').addClass('accordion').find('.block .block_content').slideUp('fast');
 	}
 	else
 	{
  		$('#right_column .block .title_block, #left_column .block .title_block').removeClass('active').off().parent().find('.block_content').removeAttr('style').slideDown('fast');
  		$('#left_column, #right_column').removeClass('accordion');
 	}
}
function accordionFooter(status){
 	if(status == 'enable') {
       	if(!$('#footercenter').hasClass('accordion')){
          	$('#footercenter .footer-block h4').on('click', function(){
              	$(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
          	})
        }
  		$('#footercenter').addClass('accordion').find('.block_content').slideUp('fast');
 	}
 	else {
  		$('.footer-block h4').removeClass('active').off().parent().find('.block_content').removeAttr('style').slideDown('fast');
  		$('#footercenter').removeClass('accordion');
 	}
}
//Float Menu
function processFloatHeader(headerAdd, scroolAction){
	if(headerAdd){
		$("#header").addClass( "navbar-fixed-top" );
	    $("#page").css( "padding-top", $("#header").height());
	    var hideheight =  $("#header").height()+120;
	    var pos = $(window).scrollTop();
	    if( scroolAction && pos >= hideheight ){
	        $("#header-main").addClass('hide-bar');
	        $(".hide-bar").css( "margin-top", - $("#header-main").height() );
	    }else {
	        $("#header-main").css( "margin-top", 0 );
	    }
	}else{
		$("#header").removeClass( "navbar-fixed-top" );
	    $("#page").css( "padding-top", '');
        $("#header-main").removeClass('hide-bar');
        $("#apollo-menu").removeClass('hidden');
        $("#header-main").css( "margin-top", 0 );

	}

}
function processFloatTopbar(topbarAdd, scroolAction){
	if(topbarAdd){
		$("#header").addClass( "navbar-fixed-top" );
	    $("#page").css( "padding-top", $("#header").height());
	    var hideheightBar =  $("#header").height()+120;
	    var pos = $(window).scrollTop();
	    if( scroolAction && pos >= hideheightBar ){
	        $("#header-main").addClass('bar');
			$("#apollo-menu").addClass('hidden');
	    }else {
	        $("#header-main").removeClass('bar');
	        $("#apollo-menu").removeClass('hidden');
	    }
	}else{
		$("#header").removeClass("navbar-fixed-top");
	    $("#page").css( "padding-top", '');
	    $("#header-main").removeClass('bar');
	    $("#apollo-menu").removeClass('hidden');
        $("#topbar").css( "margin-top", 0 );
	}

}
function floatHeader(){
	$(window).resize(function(){
		if (!$("body").hasClass("keep-header") || $(window).width() <= 990){
			return;
		}
		if ($(window).width() <= 990)
		{
			processFloatHeader(0,0);
		}
		else if ($(window).width() > 990)
		{
			if ($("body").hasClass("keep-header"))
				processFloatHeader(1,1);
		}
	});
    $(window).scroll(function() {
    	if (!$("body").hasClass("keep-header")) return;
    	if($(window).width() > 990){
	         processFloatHeader(1,1);

    	}
    });
}
function floatTopbar(){
	$(window).resize(function(){
		if (!$("body").hasClass("keep-topbar") || $(window).width() <= 990){
			return;
		}
		if ($(window).width() <= 990)
		{
			processFloatTopbar(0,0);
		}
		else if ($(window).width() > 990)
		{
			if ($("body").hasClass("keep-topbar"))
				processFloatTopbar(1,1);
		}
	});
    $(window).scroll(function() {
    	if (!$("body").hasClass("keep-topbar")) return;
    	if($(window).width() > 990){
	         processFloatTopbar(1,1);

    	}
    });
}
// Back to top
function backtotop(){
	// Hide #back-top first
	$("#back-top").hide();
	// Fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		// Scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
}
function panelTool(){
	$('#paneltool .panelbutton').click(function(){
		$('#paneltool .paneltool').toggleClass('active');
	});
}
function changeFloatHeader(){
	$('#floatHeader').click(function(){
		if ($('body').hasClass('keep-header')) {
			$('body').removeClass('keep-header');
			processFloatHeader(0,0);
		}
		else{
			processFloatTopbar(0,0);
			$('body').addClass('keep-header');
			$('body').removeClass('keep-topbar');
			$("#floatTopbar").prop("checked", false);
		};
	});
	$('#floatTopbar').click(function(){
		if ($('body').hasClass('keep-topbar')) {
			$('body').removeClass('keep-topbar');
			processFloatTopbar(0,0);
		}
		else{
			processFloatHeader(0,0);
			$('body').addClass('keep-topbar');
			$('body').removeClass('keep-header');
			$("#floatHeader").prop("checked", false);
		};
	});
}
function changeLayoutMode(){
    $('.dynamic-update-layout').click(function(){
        var currentLayoutMode = $('.dynamic-update-layout.selected').data('layout-mode');
        if(!$(this).hasClass('selected'))
        {
            $('.dynamic-update-layout').removeClass('selected');
            $(this).addClass('selected');
            selectedLayout = $(this).data('layout-mode');
            $('body').removeClass(currentLayoutMode);
            $('body').addClass(selectedLayout);
        }
    });
}
function changeHeaderStyle(){
    $('.dynamic-update-header').click(function(){
        var currentHeaderMode = $('.dynamic-update-header.selected').data('header-style');
        if(!$(this).hasClass('selected'))
        {
            $('.dynamic-update-header').removeClass('selected');
            $(this).addClass('selected');
            selectedHeaderStyle = $(this).data('header-style');
            $('body').removeClass(currentHeaderMode);
            $('body').addClass(selectedHeaderStyle);
        }
    });
}
function changeSkinsStyle(){
    $('.dynamic-update-skins').click(function(){
        var currentSkins = $('.dynamic-update-skins.selected').data('skins');
        if(!$(this).hasClass('selected'))
        {
            $('.dynamic-update-skins').removeClass('selected');
            $(this).addClass('selected');
            selectedSkins = $(this).data('skins');
            $('body').removeClass(currentSkins);
            $('body').addClass(selectedSkins);
        }
    });
}
function addFilterEffect(){
	if($("#catalog_block").length && $("#catalog_block").hasClass('ajax-filter')){
		//if this page is collection page
		if($('.catalog_filters').length){
			$('.advanced-filter').each(function(){
				dataGroup = $(this).data('group');
				if(dataGroup != "Vendor"){
					activeFilter='';
					if($(this).hasClass('active-filter'))
						activeFilter=' checked="checked"';

					$('a', $(this)).each(function(){
						var dataHandle = $(this).parent().data("handle");
						$('<input class="chkval" type="checkbox" name='+dataGroup+activeFilter+' value="'+dataHandle+'"/>').insertBefore($(this));
						$(this).click(function(event){
							chkVal = $(this).parent().find('.chkval');
							chkVal.prop("checked", !chkVal.prop("checked"));
							$(this).parent().toggleClass("active-filter");
							FilterLoadResult();
							return false;
						});
					})
				}
			});
		}

		//add ajax for sort
		$("#SortBy").change(function(event){
			event.preventDefault();

			var url      = window.location.href;
			url = replaceUrlParam(url, 'sort_by', $(this).val());

			processCollectionAjax(url);
			return false;
		});
		//add ajax for view
		$(".change-view").click(function(event){
			event.preventDefault();
			if($(this).hasClass('change-view--active')) return false;

			$(".change-view").removeClass('change-view--active');
			$(this).addClass('change-view--active');

			var url      = window.location.href;
			url = replaceUrlParam(url, 'view', $(this).data('view'));
			//add class for product list

			processCollectionAjax(url);

			$('.product_list').removeClass('list').removeClass('grid').addClass($(this).data('view'));
			return false;
		});

		pagingCollection();
	}
}

function pagingCollection(){
	activeNumber = parseInt($('.pagination li.active span').html());

	$('#pagination .pagination a').click(function(){
		var pageNumber = 0;
		//previous

		if($(this).parent().hasClass('pagination_previous')){
			pageNumber = activeNumber-1;
		}
		//next
		else if($(this).parent().hasClass('pagination_next')){
			pageNumber = activeNumber+1;
		}
		//normal paging
		else{
			pageNumber = parseInt($(this).html());
		}
		if(pageNumber >0){
			var url      = window.location.href;
			url = replaceUrlParam(url, 'page', pageNumber);

			processCollectionAjax(url);
		}
		return false;
	});
}
function FilterLoadResult(){
	var url      = window.location.href;
	var constraint = '';

	$('.chkval').each(function(){
		if($(this).is(":checked"))
			constraint += !constraint?$(this).val().toLowerCase():"+"+$(this).val().toLowerCase();
	});
	url = replaceUrlParam(url, 'constraint', constraint);
	processCollectionAjax(url);
}
function processCollectionAjax(url){
	$.ajax({
        type: 'GET',
        url: url,
        data: {},
        beforeSend:function(){
        	$('.product_list').addClass('loading');
		},
        complete: function (data) {
            $('.product_list').html($(".product_list", data.responseText).html());
            $('#pagination').remove();
            $('.content_sortPagiBar').html($(".content_sortPagiBar", data.responseText).html());
            $('.product_list').removeClass('loading');

            history.pushState({
                page: url
            }, url, url);
            pagingCollection();
        }
    });
}
function addCheckedSwatch(){
  $('.swatch .color label').on('click', function () {
    $('.swatch .color').each(function(){
      $(this).find('label').removeClass('checkedBox');
    });
    $(this).addClass('checkedBox');
  });
}
function SetOwlCarouselFirstLast(el){
    el.find(".owl-item").removeClass("first");
    el.find(".owl-item.active").first().hide();
    el.find(".owl-item.active").first().addClass("first");
    el.find(".owl-item").removeClass("last");
    el.find(".owl-item.active").last().addClass("last");
}
function activeParentMenu(){
  $('.megamenu').find('li.active').first().each(function(){
    addClassActive($(this).parent().closest('li'));
  });
}
function addClassActive(e){
  $(e).addClass('active');
  if(!$(e).parent().hasClass('megamenu')){
    addClassActive($(e).parent().closest('li'));
  }
}
/*START LEFT- RIGHT MENU*/
function setLeftColumn() {
  	if($("#left_column").length > 0) {
        if($(".over-cover").length == 0) {
            $('body').append($('<div class="over-cover"></div><div class="drag-target-left"><div class="drag-panel-left"></div></div>'));
            $('body').append($('<a href="javascript:;" data-activates="slide-out" class="button-collapse-left"><i class="mdi-navigation-menu"></i></a>'));
        }

        $(".button-collapse-left").click(function() {
            $(".drag-target-left, .button-collapse-left").addClass("hide");
          	$("body").addClass("move-left-to-right");
            $('#left_column').css("left", "-400px");
            setTimeout(function() {
                $("#left_column").parent().addClass("side-nav-container-left");
                $("#left_column").addClass("side-nav-left");
            }, 200);
        });
        $(".over-cover").click(function() {
          	$(".drag-target-left, .button-collapse-left").removeClass("hide");
            $("#left_column").parent().removeClass("side-nav-container-left");
            $("#left_column").removeClass("side-nav-left");
            $("body").removeClass("move-left-to-right");
            $(".box-left-menu").addClass("menu-close");
            $('#left_column').css("left", "");
        });
        $(".drag-target-left").click(function() {
            console.log("drag-target click");
            $(".button-collapse-left").trigger("click");
        });
    }
}
function setRightColumn() {
  	if($("#right_column").length > 0) {
        if($(".over-cover").length == 0) {
            $('body').append($('<div class="over-cover"></div><div class="drag-target-right"><div class="drag-panel-right"></div></div>'));
            $('body').append($('<a href="javascript:;" data-activates="slide-out" class="button-collapse-right"><i class="mdi-navigation-menu"></i></a>'));
        }

        $(".button-collapse-right").click(function() {
            $(".drag-target-right, .button-collapse-right").addClass("hide");
          	$("body").addClass("move-right-to-left");
            $('#right_column').css("right", "-400px");
            setTimeout(function() {
                $("#right_column").parent().addClass("side-nav-container-right");
                $("#right_column").addClass("side-nav-right");
            }, 200);
        });
        $(".over-cover").click(function() {
          	$(".drag-target-right, .button-collapse-right").removeClass("hide");
            $("#right_column").parent().removeClass("side-nav-container-right");
            $("#right_column").removeClass("side-nav-right");
            $("body").removeClass("move-right-to-left");
            $(".box-right-menu").addClass("menu-close");
            $('#right_column').css("right", "");
        });
        $(".drag-target-right").click(function() {
            console.log("drag-target click");
            $(".button-collapse-right").trigger("click");
        });
    }
}
/*END LEFT- RIGHT MENU*/