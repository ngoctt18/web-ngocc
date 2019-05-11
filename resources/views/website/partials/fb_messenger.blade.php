<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>

<!-- Your customer chat code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v3.3'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.async = true;    
    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-customerchat"
attribution=setup_tool
page_id="462500050889257"
theme_color="#13cf13"
logged_in_greeting="Hi! Chào mừng bạn đến với Milk Store."
logged_out_greeting="Hi! Chào mừng bạn đến với Milk Store."></div>

