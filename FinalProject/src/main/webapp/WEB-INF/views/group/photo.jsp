<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html class="desktop zipbob-web pixel-ratio-1 watch-active-state" lang="ko"><head>
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ec.js"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" async="" src="https://djtflbt20bdde.cloudfront.net/"></script><script src="https://connect.facebook.net/signals/plugins/identity.js?v=2.8.14" async=""></script><script src="https://connect.facebook.net/signals/config/669950873158083?v=2.8.14&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://developers.kakao.com/sdk/js/kakao.min.js" async=""></script><script type="text/javascript">var _rollbarConfig = {"accessToken":"deb700ed4e6645b7807b88cabfd545de","ignoredMessages":["Can't find Clippy.bmp. The end is nigh."],"captureUncaught":true,"captureUnhandledRejections":false,"payload":{"environment":"production"}};</script>
<script type="text/javascript">!function(r){function e(t){if(o[t])return o[t].exports;var n=o[t]={exports:{},id:t,loaded:!1};return r[t].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var o={};return e.m=r,e.c=o,e.p="",e(0)}([function(r,e,o){"use strict";var t=o(1).Rollbar,n=o(2);_rollbarConfig.rollbarJsUrl=_rollbarConfig.rollbarJsUrl||"https://d37gvrvc0wt4s1.cloudfront.net/js/v1.9/rollbar.min.js";var a=t.init(window,_rollbarConfig),i=n(a,_rollbarConfig);a.loadFull(window,document,!_rollbarConfig.async,_rollbarConfig,i)},function(r,e){"use strict";function o(r){return function(){try{return r.apply(this,arguments)}catch(e){try{console.error("[Rollbar]: Internal error",e)}catch(o){}}}}function t(r,e,o){window._rollbarWrappedError&&(o[4]||(o[4]=window._rollbarWrappedError),o[5]||(o[5]=window._rollbarWrappedError._rollbarContext),window._rollbarWrappedError=null),r.uncaughtError.apply(r,o),e&&e.apply(window,o)}function n(r){var e=function(){var e=Array.prototype.slice.call(arguments,0);t(r,r._rollbarOldOnError,e)};return e.belongsToShim=!0,e}function a(r){this.shimId=++c,this.notifier=null,this.parentShim=r,this._rollbarOldOnError=null}function i(r){var e=a;return o(function(){if(this.notifier)return this.notifier[r].apply(this.notifier,arguments);var o=this,t="scope"===r;t&&(o=new e(this));var n=Array.prototype.slice.call(arguments,0),a={shim:o,method:r,args:n,ts:new Date};return window._rollbarShimQueue.push(a),t?o:void 0})}function l(r,e){if(e.hasOwnProperty&&e.hasOwnProperty("addEventListener")){var o=e.addEventListener;e.addEventListener=function(e,t,n){o.call(this,e,r.wrap(t),n)};var t=e.removeEventListener;e.removeEventListener=function(r,e,o){t.call(this,r,e&&e._wrapped?e._wrapped:e,o)}}}var c=0;a.init=function(r,e){var t=e.globalAlias||"Rollbar";if("object"==typeof r[t])return r[t];r._rollbarShimQueue=[],r._rollbarWrappedError=null,e=e||{};var i=new a;return o(function(){if(i.configure(e),e.captureUncaught){i._rollbarOldOnError=r.onerror,r.onerror=n(i);var o,a,c="EventTarget,Window,Node,ApplicationCache,AudioTrackList,ChannelMergerNode,CryptoOperation,EventSource,FileReader,HTMLUnknownElement,IDBDatabase,IDBRequest,IDBTransaction,KeyOperation,MediaController,MessagePort,ModalWindow,Notification,SVGElementInstance,Screen,TextTrack,TextTrackCue,TextTrackList,WebSocket,WebSocketWorker,Worker,XMLHttpRequest,XMLHttpRequestEventTarget,XMLHttpRequestUpload".split(",");for(o=0;o<c.length;++o)a=c[o],r[a]&&r[a].prototype&&l(i,r[a].prototype)}return e.captureUnhandledRejections&&(i._unhandledRejectionHandler=function(r){var e=r.reason,o=r.promise,t=r.detail;!e&&t&&(e=t.reason,o=t.promise),i.unhandledRejection(e,o)},r.addEventListener("unhandledrejection",i._unhandledRejectionHandler)),r[t]=i,i})()},a.prototype.loadFull=function(r,e,t,n,a){var i=function(){var e;if(void 0===r._rollbarPayloadQueue){var o,t,n,i;for(e=new Error("rollbar.js did not load");o=r._rollbarShimQueue.shift();)for(n=o.args,i=0;i<n.length;++i)if(t=n[i],"function"==typeof t){t(e);break}}"function"==typeof a&&a(e)},l=!1,c=e.createElement("script"),d=e.getElementsByTagName("script")[0],p=d.parentNode;c.crossOrigin="",c.src=n.rollbarJsUrl,c.async=!t,c.onload=c.onreadystatechange=o(function(){if(!(l||this.readyState&&"loaded"!==this.readyState&&"complete"!==this.readyState)){c.onload=c.onreadystatechange=null;try{p.removeChild(c)}catch(r){}l=!0,i()}}),p.insertBefore(c,d)},a.prototype.wrap=function(r,e){try{var o;if(o="function"==typeof e?e:function(){return e||{}},"function"!=typeof r)return r;if(r._isWrap)return r;if(!r._wrapped){r._wrapped=function(){try{return r.apply(this,arguments)}catch(e){throw e._rollbarContext=o()||{},e._rollbarContext._wrappedSource=r.toString(),window._rollbarWrappedError=e,e}},r._wrapped._isWrap=!0;for(var t in r)r.hasOwnProperty(t)&&(r._wrapped[t]=r[t])}return r._wrapped}catch(n){return r}};for(var d="log,debug,info,warn,warning,error,critical,global,configure,scope,uncaughtError,unhandledRejection".split(","),p=0;p<d.length;++p)a.prototype[d[p]]=i(d[p]);r.exports={Rollbar:a,_rollbarWindowOnError:t}},function(r,e){"use strict";r.exports=function(r,e){return function(o){if(!o&&!window._rollbarInitialized){var t=window.RollbarNotifier,n=e||{},a=n.globalAlias||"Rollbar",i=window.Rollbar.init(n,r);i._processShimQueue(window._rollbarShimQueue||[]),window[a]=i,window._rollbarInitialized=!0,t.processPayloads()}}}}]);</script>
    <meta charset="utf-8">
    <link rel="dns-prefetch" href="https://dppgjjx7k7m5m.cloudfront.net">
    <link rel="preconnect" href="https://dppgjjx7k7m5m.cloudfront.net">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <title>이태원 해방촌에서 새로운 사람들과의 만남, 즐거움:) - 소셜다이닝 집밥</title>
  <meta name="description" content="이태원의 핫플레이스 해방촌에 위치한 BREEZY입니다!
핫한 이 여름!
시원한 이 공간에서 새로운 사람들과 뜨겁고 즐거운 수다, 어떠세요?">

  <meta property="fb:app_id" content="498270173519404">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="소셜다이닝 집밥">
  <meta property="og:title" content="이태원 해방촌에서 새로운 사람들과의 만남, 즐거움:)">
  <meta property="og:url" content="https://www.zipbob.net/p/57b177c8e76f681b4a000003">
  <meta property="og:description" content="이태원의 핫플레이스 해방촌에 위치한 BREEZY입니다!
핫한 이 여름!
시원한 이 공간에서 새로운 사람들과 뜨겁고 즐거운 수다, 어떠세요?">
  <meta property="og:image" content="https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/0d/ab/5976c6ce532c284f40715a30/IMG_0501.jpg">

  <link rel="canonical" href="https://www.zipbob.net/p/57b177c8e76f681b4a000003">


    <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-76x76-75f978d2004ffe19de854658ff192836f7dc9dee31641b445ae851de42674ded.png">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-57x57-751ea90282d677d5d69ca59598758e52261e709c2bed4f9b608e75338a4a474e.png" sizes="57x57">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-60x60-ee799a949d31a0bb3878ad9d0aee66b181dac35071c96a792dd7709749a8a9cd.png" sizes="60x60">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-72x72-61e3f27cc9b37326e2e0a521e7f47d275f28ebf718e033b3b30b8f343af01129.png" sizes="72x72">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-76x76-75f978d2004ffe19de854658ff192836f7dc9dee31641b445ae851de42674ded.png" sizes="76x76">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-114x114-6b0fa3aaf6dcdc1bd29a8177bcf0a75aeb40db8d5bc41fd89ff2ca0b3f09f83c.png" sizes="114x114">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-120x120-ce4bb3159562b98bee31bffd6f7eac396cb8568eb834afc3807698abeec1e579.png" sizes="120x120">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-144x144-ae478b60a41066a7291b6babdb8f0b37cc7dcb6a98d453150387ffae243cf074.png" sizes="144x144">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-152x152-245b1d415a2534cdd35a3540afe5d523d0a809fd803ebd80f308935df4113d66.png" sizes="152x152">
      <link rel="apple-touch-icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/apple-icon-180x180-5b19fc83d0a7d31a6344d9b5089a8aba532102a386bbba2c01e8b394eba9943d.png" sizes="180x180">
    <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/android-icon-192x192-b22fac1302b40a160c815bdbd03b8165ca7179e3df0d3116b59a906bd6fe66f2.png" sizes="192x192">
    <link rel="shortcut icon" type="image/x-icon" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-5401af4a5172d213d979fd8d1976bce7ed311ba4728ee5a9a3cae5e0fd5daa9e.ico">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-32x32-f92f6d44fabb64b1b3d9d28486c621e5660721a5b3575272217b643d36fb916f.png" sizes="32x32">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-96x96-e5712fb2d9d97088a89266c5a8d94416d5b1d2f86a635c9c29b89056b618ac4b.png" sizes="96x96">
      <link rel="icon" type="image/png" href="https://dppgjjx7k7m5m.cloudfront.net/assets/icons/favicon-16x16-d573deb7b18c35d5a501ff957c15fb2d5b8605c44d075f117dc9149436b49360.png" sizes="16x16">

    <meta name="format-detection" content="telephone=no">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="theme-color" content="#ff3b30">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">

    <meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="1pPnCHJ8mKEk0Q2UG1O3mXTDKqpdJQVhXPVgvuST6U1ks9mjEJnpL38gMzxrR4zH1fV9oTsxqNMkQp+iXIB+lA==">
    <meta name="action-cable-url" content="/cable">

    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css">
    <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
    <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css"> -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="https://dppgjjx7k7m5m.cloudfront.net/assets/main-76d3720d8b56eadcc8cf64fb74197c46099fde4352a18a5f25edc0c806c1a237.js" crossorigin="anonymous"></script>
    <script src="https://dppgjjx7k7m5m.cloudfront.net/assets/web-9b4e26f38626985de32bb998ccfaca8e754a6117f6ec13079cd174715392de22.js" crossorigin="anonymous"></script>

    <script>
  var loc = window.location;
  if (loc.hash) {
    var path = loc.hash.substring(1);
    var search = loc.search;

    if ((path.indexOf('/p/') !== -1) || (path.indexOf('/picks/') !== -1) || (path.indexOf('/settings/account') !== -1)) {
      window.location = path + search;
    } else if ((path.indexOf('/searchs') !== -1)) {
      window.location = '/s' + search;
    }
  }
</script>

    <script>
  var $buoop = {
    vs: { i: 10, f: 30, o: 25, s: 7 },
    c: 2,
    reminder: 0,
    onshow: function(infos) {
      ga('send', 'event', 'ux', 'browser-update-show', navigator.userAgent, { nonInteraction: true });
    },

    onclick: function(infos) {
      ga('send', 'event', 'ux', 'browser-update-close', navigator.userAgent, { nonInteraction: true });
    }
  }

  function $buo_f(){
    var e = document.createElement("script");
    e.src = "//browser-update.org/update.min.js";
    document.body.appendChild(e);
  };
  try {document.addEventListener("DOMContentLoaded", $buo_f, false)}
  catch(e){window.attachEvent("onload", $buo_f)}
</script>

    <script>
  function loadJS(src, cb) {
    var ref = window.document.getElementsByTagName("script")[0];
    var script = window.document.createElement("script");
    script.src = src;
    script.async = true;
    ref.parentNode.insertBefore(script, ref);
    if (cb && typeof(cb) === "function") {
      script.onload = cb;
    }
    return script;
  }

  loadJS('https://developers.kakao.com/sdk/js/kakao.min.js', function() {
    Kakao.init('27bc13794a21ad76b5bb5295ee1817c8');
  });

  // loadJS('https://openapi.map.naver.com/openapi/v2/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R');
</script>

    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-77732648-3', 'auto', {'siteSpeedSampleRate': 100 });
  ga('require', 'ec');
  ga('require', 'linkid');
  ga('require', 'displayfeatures');

    ga('set', '&uid', '5b04dc34532c2845f88f333b'); // Set the user ID using signed-in user_id.
    ga('set', 'dimension1', 'Y:2018;Q:2;M:05;WY:2018;WM:05;WD:21;D:23;H:12');

  // http://stackoverflow.com/questions/23923605/universal-analytics-and-signup-with-facebook

    ga('send', 'pageview');
</script>

    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>

    <!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
  n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
  document,'script','https://connect.facebook.net/en_US/fbevents.js');

    fbq('init', '669950873158083', {
      em: 'august9510@naver.com',
      // Data will be hashed automatically via a dedicated function in FB pixel
      ph: '82-'
    });
  fbq('track', 'PageView');
</script>
<noscript>
  <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=669950873158083&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->

    <script>!function(e,o,n){window.HSCW=o,window.HS=n,n.beacon=n.beacon||{};var t=n.beacon;t.userConfig={},t.readyQueue=[],t.config=function(e){this.userConfig=e},t.ready=function(e){this.readyQueue.push(e)},o.config={docs:{enabled:!0,baseUrl:"//zipbob.helpscoutdocs.com/"},contact:{enabled:!0,formId:"d9595e48-dbf6-11e6-8789-0a5fecc78a4d"}};var r=e.getElementsByTagName("script")[0],c=e.createElement("script");c.type="text/javascript",c.async=!0,c.src="https://djtflbt20bdde.cloudfront.net/",r.parentNode.insertBefore(c,r)}(document,window.HSCW||{},window.HS||{});</script>
<script>
  HS.beacon.config({
    autoInit: true,
    modal: true,
    color: '#01ac50',
    icon: 'buoy',
    translation: {
      searchLabel: '질문을 입력하거나 키워드로 검색하세요.',
      searchErrorLabel: '찾을 수 없습니다.',
      noResultsLabel:	'찾을 수 없습니다.',
      contactLabel:	'문의하기',
      attachFileLabel: '피일 첨부',
      attachFileError: '파일이 너무 큽니다.',
      nameLabel: '이름',
      nameError: '이름을 입력해 주세요.',
      emailLabel: '이메일',
      emailError: '이메일을 입력해 주세요.',
      topicLabel:	'어떤 문의인가요?',
      topicError:	'리스트에서 선택해주세요.',
      subjectLabel:	'제목',
      subjectError:	'제목을 입력해 주세요.',
      messageLabel:	'어떻게 도와드릴까요?',
      messageError:	'내용을 입력해 주세요.',
      sendLabel: '보내기',
      contactSuccessLabel: '문의가 접수되었습니다.',
      contactSuccessDescription: 'Thanks for reaching out! Someone from our team will get back to you soon.'
    },
    topArticles: true,
    zIndex: 11111,
    topics: [
      { val: '모임수정', label: '모임수정' },
      { val: '결제/환불', label: '결제/환불'},
      { val: '정산/세금계산서', label: '정산/세금계산서'},
      { val: '기능오류', label: '기능오류' },
      { val: '제휴/언론보도', label: '제휴/언론보도'},
      { val: '의견 및 기타문의', label: '의견 및 기타문의'},
    ],
    attachment: true,
    instructions: '어떻게 도와드릴까요?',
    poweredBy: false,
  });

  HS.beacon.ready(function() {
      HS.beacon.identify({
        name: '박보영',
        email: 'august9510@naver.com',
        Age: ''
      });

    $(document).on('click', '.open-beacon', function(e) {
      e.preventDefault();
      HS.beacon.open();
    });
  });
</script>

  <style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_loader{background-color:#f6f7f9;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;bottom:0;left:0;right:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29487d;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f9;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
.fb_customer_chat_bounce_in{animation-duration:250ms;animation-name:fb_bounce_in}.fb_customer_chat_bounce_out{animation-duration:250ms;animation-name:fb_fade_out}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_mobile_overlay_active{background-color:#fff;height:100%;overflow:hidden;position:fixed;visibility:hidden;width:100%}@keyframes fb_fade_out{from{opacity:1}to{opacity:0}}@keyframes fb_bounce_in{0%{opacity:0;transform:scale(.8, .8);transform-origin:100% 100%}10%{opacity:.1}20%{opacity:.2}30%{opacity:.3}40%{opacity:.4}50%{opacity:.5}60%{opacity:.6}70%{opacity:.7}80%{opacity:.8;transform:scale(1.03, 1.03)}90{opacity:.9}100%{opacity:1;transform:scale(1, 1)}}</style></head>

  <body class="theme-red ">
      <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '498270173519404',
        status     : true,
        cookie     : true,
        xfbml      : true,
        version    : 'v2.8'
      });
    };

    (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ko_KR/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>


    <div class="panel-overlay"></div>

    <div class="views">
      <div class="view view-main">
        <div class="pages">
          <div class="navbar global-navbar desktop-navbar">
  <div class="navbar-inner">
    <div class="center">
      <a class="logo external" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="desktop-navbar-logo" href="/">
        <img src="https://dppgjjx7k7m5m.cloudfront.net/assets/logo-2b94dae9b32a1a4b4583eb567a7df4609a50e67f39eed4c27737a1278cee1f8f.png" alt="Logo">
</a>    </div>

    <a class="link open-search-filter-popup" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="navbar-search-icon" href="/s">
      <i class="material-icons search"></i> <span>모임찾기</span>
</a>
    <div class="right">
        <div class="link icon-only zigi-dropdown-menu">
          <a class="zigi-link" href="/host/products">
            <span>집밥지기</span>
</a>
          <div class="dropdown-content">
            <div class="content-block">
              <div class="list-block no-hairline zigi-dropdown-block">
                <ul>
                  <li>
                    <a href="/host/dashboard">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">소식</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="/host/variants"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">일정</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="/host/products">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">모임 관리</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/zigi?ref=global-navbar">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">모임 만들기</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="#"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">참여 관리</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="/host/stats">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">정산 내역</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/host/stories">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">후기</div>
                        </div>
                      </div>
</a>                  </li>
                </ul>
              </div>
            </div>
          </div>
</div>
        <div class="link icon-only joiner-dropdown-menu">
          <a class="joiner-link" href="/profile/order_items">
            <span>참여자</span>
</a>
          <div class="dropdown-content">
            <div class="content-block-title">
              <div class="left">
                참여 모임
              </div>

              <div class="right">
                <a href="/profile/order_items">모임 보기</a>
              </div>
            </div>

            <div class="list-block media-list">
              <ul>
                  <li class="empty-item">
                    <a class="item-content item-link" href="/s">
                      <div class="item-inner">
                        <div class="item-title-row">
                          <div class="item-title">
                            현재 예정된 모임이 없습니다.
                          </div>
                        </div>

                        <div class="item-subtitle">
                          모임찾기
                        </div>
                      </div>
</a>                  </li>
              </ul>
            </div>

            <div class="content-block-title">
              <div class="left">
                앵콜
              </div>

              <div class="right">
                <a href="/encores">앵콜 보기</a>
              </div>
            </div>

            <div class="list-block media-list">
              <ul>
                  <li class="empty-item">
                    <a class="item-content item-link" href="/s">
                      <div class="item-inner">
                        <div class="item-title-row">
                          <div class="item-title">
                            앵콜한 모임이 없습니다.
                          </div>
                        </div>

                        <div class="item-subtitle">
                          모임찾기
                        </div>
                      </div>
</a>                  </li>
              </ul>
            </div>
          </div>
</div>

        <a class="link icon-only" target="_blank" href="http://help.zipbob.net">
          <span>도움말</span>
</a>
        <div class="link profile-image user-dropdown-menu">
          <a href="/users/august9510">
            <img width="28" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
</a>
          <div class="dropdown-content">
            <div class="content-block">
              <div class="list-block no-hairline">
                <ul>
                  <li>
                    <a href="/settings/profile">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">프로필 수정</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/settings/account">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">계정 관리</div>
                        </div>
                      </div>
</a>                  </li>

                  <!-- <li> -->
                  <!--   <a href="/settings/notification"> -->
                  <!--     <div class="item&#45;content"> -->
                  <!--       <div class="item&#45;inner"> -->
                  <!--         <div class="item&#45;title">계정 관리</div> -->
                  <!--       </div> -->
                  <!--     </div> -->
                  <!--   </a> -->
                  <!-- </li> -->

                  <li>
                    <a href="https://zipbob.app.link/download-our-app">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">앱 다운로드</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a href="/notices">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">공지사항</div>
                        </div>
                      </div>
</a>                  </li>

                  <li>
                    <a rel="nofollow" data-method="delete" href="/users/sign_out">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">로그아웃</div>
                        </div>
                      </div>
</a>                  </li>
                </ul>
              </div>
            </div>
          </div>
</div>    </div>
  </div>
</div>

          
<div data-page="reviews-index" class="page product_57b177c8e76f681b4a000003 reviews index">
  <div class="navbar">
    <div class="navbar-inner">
      <a class="back link" href="/p/57b177c8e76f681b4a000003">
        <i class="material-icons arrow_back"></i>
</a>
      <div class="center">
        이태원 해방촌에서 새로운 사람들과의 만남, 즐거움:)
      </div>
    </div>
  </div>

  <div class="page-content">
    <div class="page-content-inner">
        <div class="content-block product-block">
          <a href="/p/57b177c8e76f681b4a000003">
            <i class="material-icons arrow_back"></i>
            이태원 해방촌에서 새로운 사람들과의 만남, 즐거움:)
</a>        </div>

        <div class="content-block-title text-title">
          후기 9개
        </div>

        <div class="review-block">
          <div class="card review-card review_591f9674532c28793338d0b3">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/c6/9b/58531790532c287fb526683c/thumb_2016-12-16-14-58-21.jpg" alt="Thumb 2016 12 16 14 58 21">
    </div>
    <div class="name">오감</div>
    <div class="date">2017/05/20</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>작년 집밥 어워드에서 처음 뵌 브릿지 지기님들 모임에 한 번 놀러가야지~했었는데 이제야 갔네요. ㅎㅎ</p>

<p>해방촌길이 꽤나 정겨워서 잠시 걷다 들어갔는데 가게가 넘나 이쁜거있죠? 지기님들께 참 어울리는 공간이란 느낌이 들었네요. </p>

<p>피자와 스파게티 그리고 치맥도 함께 맛있게 먹었지만 먹는것보다 서로 얘기하며 즐기는 시간이 가득한 모임이였습니다. </p>

<p>처음 보는 사람들 앞에서 자신의 생각과 타인의 생각을 공유할 수 있는 기회가 흔치 않잖아요? 다양한 생각과 공통 관심사를 나누며 유쾌하고 특별한 시간을 보냈네요. </p>

<p>지기님들께서 시간배분이나 운영이 능숙하셔서 낯가림이 있으신 분들도 쉽게 같이 어울리실 수 있을거라 생각됩니다.</p>

<p>마지막에 서로에게 한 마디씩 적는 롤링페이퍼는 정말이지 감사하게 소중히 간직할게요. ^^</p>

<p>좋은 시간 만들어 주셔서 고맙습니다.</p>
    </div>

    <div class="row no-gutter photos">
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/34/11/591f9698532c28793338d0b4/small_20170519_193602_HDR.jpg" alt="Small 20170519 193602 hdr">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/c1/ac/591f96a0532c28328c383a27/small_20170519_194822.jpg" alt="Small 20170519 194822">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/6d/f0/591f96b2532c28328c383a28/small_20170519_194826.jpg" alt="Small 20170519 194826">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/5b/c9/591f96b4532c28793338d0b7/small_20170519_195955.jpg" alt="Small 20170519 195955">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/46/7a/591f96d9532c28793338d0b8/small_20170519_195832.jpg" alt="Small 20170519 195832">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/95/5d/591f96d9532c28328c383a29/small_20170519_195905.jpg" alt="Small 20170519 195905">
          </div>
          <div class="photo col-25">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/0a/9c/591f96ea532c28793338d0c5/small_20170519_230129.jpg" alt="Small 20170519 230129">
          </div>

        <div class="photo col-25 dummy">
        </div>
        <div class="photo col-25 dummy">
        </div>
    </div>
  </div>

</div><div class="card review-card review_5901a9d3532c283f30111a92">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/4f/cb/57e01318532c284de2599dfb/thumb_puttr.jpg" alt="Thumb puttr">
    </div>
    <div class="name">BsMio</div>
    <div class="date">2017/04/27</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>두번째 방문이었지만 항상 친절하시고 반겨주신 좋으신 지기님들과 지난주엔 여행 피로덕에 2차못가고 그냥 돌아간게 아직도 아쉽네요 두번의 참여모두
<br>좋으신분들과 즐거운시간 그리고 안락한공간에서
<br>매번 힐링하고 옵니다 좋은시간 만들어주신 모든분들께 감사를 :)롤링페이퍼 같은건 첨받아봤는대 아직도 간간히 읽어볼정도로 좋네요 좋은시간 좋은기억 좋은사람들과 좋은곳에서 즐거웠습니다:)</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_58fe3f1a532c287eb91074c2">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/ac/7c/55be0a4de76f68655f000007/thumb_1.jpg" alt="Thumb 1">
    </div>
    <div class="name">하루 &amp; 아키</div>
    <div class="date">2017/04/25</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>낮선 사람들과 낮선장소에서 깊이있는 이야기를 나눈다는것이 
<br>쉽지 않은 일인데... 
<br>특별한 장소와 분위기, 모임의 컨셉, 지기님들의 자연스러운 진행 덕에 
<br>아주 편안하고 재미있는 시간 보냈습니다.
<br>나중에 이런모임을 꼭 만들어 보고싶을 정도로 좋았어요!
<br>좋은하루 만들어 주셔서 감사합니다 :)</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_58fa67a7532c2877b4108393">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/49/bc/58f1a107532c284fbfb2c20a/thumb_riderjk.jpg" alt="Thumb riderjk">
    </div>
    <div class="name">준기(스)님</div>
    <div class="date">2017/04/22</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>때는 4/21 처음 나가본 집밥모임에서 초면인 분들과 마치 오래 알고 지낸 지인처럼 편안하게 얘기를 하다보니 어느덧 시계가 훌쩍 3시간이 넘어버렸네요!! 근처로 2차를 가서는 두 시까지 떠들다 들어왔네요. (2차 못 가시고 먼저 가셔야만 했던 분들 참 아쉬웠습니다.)</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_58d6a520532c286ccf2bcfd7">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/15/92/5470a6393236374c7b160000/thumb_f9105-000_carmen218.jpg" alt="Thumb f9105 000 carmen218">
    </div>
    <div class="name">AZ</div>
    <div class="date">2017/03/26</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>어떤 모임일까 궁금했는데 이런 모임이었군요. 이런 모임이 어떤 모임일지 궁금하시면 참여해보는 것도 좋을 듯 싶습니다.
<br>'수지'닮으신 지기님이 이것저것 시도해보시는 것 같으니 매번 다른 느낌의 모임이 될거 같아 기대됩니다.</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_58d54fd5532c283a202ba38c">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/99/0e/543959d23236375437080000/thumb_1524632_10203636518302796_1604922208_n.jpg" alt="Thumb 1524632 10203636518302796 1604922208 n">
    </div>
    <div class="name">KJ</div>
    <div class="date">2017/03/25</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>처음 뵙는 분들과 솔직한 이야기 나눌 기회를 만들어주셔서 감사합니다 😊</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_58553757532c286d9f2688f9">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/dc/4d/57bfc299532c2823a2fb8204/thumb_12038495_743618495782395_1283317059690899414_n.jpg" alt="Thumb 12038495 743618495782395 1283317059690899414 n">
    </div>
    <div class="name">Noah </div>
    <div class="date">2016/12/17</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>재미잇는 모임이엇습니다. 홍대로 2차도 가고요.ㅋㅋ</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_57e86955532c2816d51b53ec">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/d6/bb/532582cae76f687d8300005c/thumb_2015-11-01_00.38.32.jpg" alt="Thumb 2015 11 01 00.38.32">
    </div>
    <div class="name">Ryan Cho</div>
    <div class="date">2016/09/26</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>최고였습니다 해방촌에 그런곳이있을줄은 몰랐네요
<br>덕분에 좋은장소 알게되었습니다</p>
    </div>

    <div class="row no-gutter photos">

    </div>
  </div>

</div><div class="card review-card review_57e5e979532c28573a0b96f8">
  <div class="card-header">
    <div class="avatar">
      <img width="35" height="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/45/13/57dfe543e76f6842c6000007/thumb_IMG_1673.JPG" alt="Thumb img 1673">
    </div>
    <div class="name">차근차근</div>
    <div class="date">2016/09/24</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">

      <p>제가 원래 11시면 자는 사람인데..
<br>어젠 새벽까지 함께 했었습니다. ^-^
<br>이런 저런 사는 이야기를 공유하고,
<br>가볍게, 때론 진지하게, 서로 공감하는 
<br>좋은 자리였습니다.
<br>멋진 야경은 보너스~
<br>시간만 된다면 매주 참석하고 싶네요~</p>

<p>마지막으로 어제 뵈었던 분들께 하고 싶은 말은.. 덕분에 너무 즐거웠습니다.
<br>감사하구요~ 다음에 또 뵈여~ ^^</p>
    </div>

    <div class="row no-gutter photos">
          <div class="photo col-100">
            <img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/10/2e/57e64ec3532c2820493dc57e/large_IMG_1966.JPG" alt="Large img 1966">
          </div>

    </div>
  </div>

</div>
        </div>
    </div>
  </div>
</div>

        </div>
      </div>
    </div>

    <footer id="footer" class="desktop-footer">
  <div class="footer-block-wrapper">
    <div class="footer-inner">
      <div class="row">
        <div class="col-33">
          <div class="main">
            <div class="heading">
              집밥
            </div>

            <ul>
              <li>
                <a href="/about/about_us">소개</a>
              </li>

              <li>
                <a href="/press/news">미디어</a>
              </li>

              <li>
                <a target="_blank" href="http://help.zipbob.net">도움말</a>
              </li>

              <li>
                <strong><a href="/terms/privacy">개인정보 처리방침</a></strong>
              </li>

              <li>
                <a href="/terms">이용약관</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-33">
          <div class="main">
            <div class="heading">
              둘러보기
            </div>

            <ul>
              <li>
                <a href="/reviews">후기</a>
              </li>

              <li>
                <a href="/interviews">수다</a>
              </li>

              <li>
                <a href="/stories">스토리</a>
              </li>

              <li>
                <a href="/zigi?ref=footer">모임 만들기</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-33">
          <div class="main">
            <div class="heading">
              우수지기
            </div>

            <ul class="list">
              <li>
                <a href="/badges/best_host_2016">2016</a>
              </li>

              <li>
                <a href="/badges/best_host_2015">2015</a>
              </li>

              <li>
                <a href="/badges/best_host_2014">2014</a>
              </li>

              <li>
                <a href="/badges/best_host_2013">2013</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-divider">
    </div>

    <div class="footer-bottom">
      <div class="zipbob-brand">
        <div class="logo">
          <img src="https://dppgjjx7k7m5m.cloudfront.net/assets/2_icon-ios-d6135680f443bb2bf68e844e94d41a4a993dbb95473a336211613b3dba02f163.png" alt="2 icon ios">
        </div>

        <div class="sns">
          <a href="http://www.facebook.com/zipbobnet" class="facebook" target="_blank">
            페이스북
          </a>
          <span>·</span>

          <a href="https://instagram.com/zipbobnet/" class="instagram" target="_blank">
            인스타그램
          </a>
          <span>·</span>

          <a href="http://zipbob-blog.net/" class="naver" target="_blank">
            블로그
          </a>
          <span>·</span>

          <a href="https://story.kakao.com/ch/zipbobnet" class="kakaostory" target="_blank">
            카카오스토리
          </a>
        </div>
      </div>

      <div class="copyright">
        <span class="text">
          상호명: (주)집밥 | 대표: 박설미 | 개인정보관리책임자 : 박설미
        </span>

        <span class="text">
          사업자 등록번호: 215-87-73877 | 통신판매업신고: 제 2013-서울송파-0228호
        </span>

        <span class="text">
          서울특별시 성동구 왕십리로 88 노벨빌딩 4층 | <a href="mailto:help@zipbob.net">help@zipbob.net</a>
        </span>
      </div>

      <div class="copyright">
        <span class="text">
          ©2012-2017. ZIPBOB. ALL RIGHTS RESERVED.
        </span>
      </div>
    </div>
  </div>
</footer>


    
      <script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>

<script>
  $(function() {
    $(document).on('click', '#product_master_variant_attributes_location_attributes_address', function (e) {
      App.f7.popup('.postcode-popup');

      var element_layer = document.getElementById('postcode-wraper');
      new daum.Postcode({
        // theme: themeObj,
        width: '100%',
        height: '100%',
        oncomplete: function(data) {
          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수

          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if (data.userSelectedType === 'R') {
            // 건물명이 있을 경우 추가한다.
            if (data.buildingName !== '') {
              extraAddr = data.buildingName;
            }
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('product_master_variant_attributes_location_attributes_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('product_master_variant_attributes_location_attributes_address').value = fullAddr;
          document.getElementById('product_master_variant_attributes_location_attributes_address2').value = extraAddr;
          document.getElementById('product_master_variant_attributes_location_attributes_city').value = data.sido;
          document.getElementById('product_master_variant_attributes_location_attributes_region').value = data.sigungu;
          document.getElementById('product_master_variant_attributes_location_attributes_sido').value = data.sido;
          document.getElementById('product_master_variant_attributes_location_attributes_sigugun').value = data.sigungu;
          document.getElementById('product_master_variant_attributes_location_attributes_dongmyun').value = data.bname;

          document.getElementById('product_master_variant_attributes_location_attributes_address2').focus();
          App.f7.closeModal('.postcode-popup')
        },
      }).embed(element_layer, {
        autoClose: false
      });
    });

    $(document).on('click', '#variant_location_attributes_address', function (e) {
      App.f7.popup('.postcode-popup');

      var element_layer = document.getElementById('postcode-wraper');
      new daum.Postcode({
        // theme: themeObj,
        width: '100%',
        height: '100%',
        oncomplete: function(data) {
          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수

          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if (data.userSelectedType === 'R') {
            // 건물명이 있을 경우 추가한다.
            if (data.buildingName !== '') {
              extraAddr = data.buildingName;
            }
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('variant_location_attributes_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('variant_location_attributes_address').value = fullAddr;
          document.getElementById('variant_location_attributes_address2').value = extraAddr;
          document.getElementById('variant_location_attributes_city').value = data.sido;
          document.getElementById('variant_location_attributes_region').value = data.sigungu;
          document.getElementById('variant_location_attributes_sido').value = data.sido;
          document.getElementById('variant_location_attributes_sigugun').value = data.sigungu;
          document.getElementById('variant_location_attributes_dongmyun').value = data.bname;

          document.getElementById('variant_location_attributes_address2').focus();
          App.f7.closeModal('.postcode-popup')
        },
      }).embed(element_layer, {
        autoClose: false
      });
    });
  });
</script>

<div class="popup postcode-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">주소 찾기</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <div id="postcode-wraper" class="page-content">
  </div>
</div>

    <div class="popup search-filter-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">필터</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <form class="product-search-form" action="/s" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="✓">
    <div class="search-form-block-wrapper">
      <div class="content-block">
        <div class="list-block no-hairline inputs-list main-filter-block">
          <ul>
            <li class="category-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">카테고리</div>
                  <div class="item-input item-input-field">


                    <select name="category" class="product-category">
                      <option value="">모든 주제</option>
<option value="talk">대화/일상</option>
<option value="food">요리/음식</option>
<option value="culture">문화/예술</option>
<option value="activity">활동/놀이</option>
<option value="diy">공예/DIY</option>
<option value="learning">지식/배움</option>
<option value="meet">만남/연애</option>
                    </select>
                  </div>
                </div>
              </div>
            </li>

            <li class="sort-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">정렬</div>
                  <div class="item-input item-input-field">

                    <select name="sort" class="product-sort">
                      <option value="meeted">날짜순</option>
<option value="created">개설순</option>
<option value="reviews">후기순</option>
<option value="orders">참가자순</option>
<option value="encores">앵콜순</option>
                    </select>
                  </div>
                </div>
              </div>
            </li>

            <li class="date-block-wrapper">
              <div class="item-content">
                <div class="item-inner">
                  <div class="item-title label">날짜</div>
                  <div class="item-input item-input-field">
                    <input name="meet_at" value="" type="text" placeholder="언제 시간되세요?" class="open-search-calendar" readonly="">
                  </div>
                </div>
              </div>
            </li>
          </ul>

          <div class="content-block date-button-block">
            <div class="buttons-row">
              <a class="button button-raised righ-now" data-date-range="2018-05-24 - 2018-05-27" href="#">이번 주</a>
              <a class="button button-raised weekend" data-date-range="2018-05-25 - 2018-05-27" href="#">주말</a>
              <a class="button button-raised next-week" data-date-range="2018-05-28 - 2018-06-03" href="#">다음 주</a>
            </div>
          </div>
        </div>

        <div class="zigi-filter-wrapper">
          <div class="content-block-title">
            지기
          </div>

          <div class="content-block">
            <div class="list-block media-list">
              <ul>
                <li>
                  <label class="label-checkbox item-content">
                    <input type="checkbox" name="best_host" id="best_host" value="best_host">
                    <div class="item-media"><i class="icon icon-form-checkbox"></i></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title">우수지기</div>
                      </div>

                      <div class="item-text">
                        오랫동안 믿음직한 활동을 보여준 지기를 만나 보세요.
                      </div>
                    </div>
                  </label>
                </li>

                <li>
                  <label class="label-checkbox item-content">
                    <input type="checkbox" name="culture_21st" id="culture_21st" value="culture_21st">
                    <div class="item-media"><i class="icon icon-form-checkbox"></i></div>
                    <div class="item-inner">
                      <div class="item-title-row">
                        <div class="item-title">문예지기</div>
                      </div>

                      <div class="item-text">
                        매달 마지막 주는 21세기 문예지기와 함께 문화·예술 활동을 즐기세요!
                      </div>
                    </div>
                  </label>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="submit-block-wrapper">
          <div class="content-block">
            <input type="submit" name="commit" value="검색하기" data-disable-with="검색중..." class="button button-big button-fill">
          </div>
        </div>

        <a class="button external" data-behavior="tracking" data-tracking-category="ux" data-tracking-action="click" data-tracking-label="search-filter-reset-button" href="/s">필터 삭제</a>
      </div>
    </div>
</form></div>

<script>
  $(document).on('click', '.open-search-filter-popup', function (e) {
    e.preventDefault();
    App.f7.popup('.search-filter-popup');
    ga('send', 'event', 'ux', 'click', 'search-filter-popup');
  });

  $(document).on('click', '.search-filter-popup .buttons-row .button', function (e) {
    e.preventDefault();
    var dateRange = Dom7(this).data('date-range');
    console.log(dateRange);
    Dom7('.search-filter-popup .open-search-calendar').val(dateRange);
  });

  var startDate = new Date();
  var minDate = startDate.setHours(0, 0, 0, 0);
  var maxDate = new Date(startDate.getFullYear(), startDate.getMonth() + 1, startDate.getDate() + 3);
  var calendarDefault = App.f7.calendar({
    input: '.open-search-calendar',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월' , '9월' , '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    // value: App.selectedMeetAt,
    minDate: minDate,
    maxDate: maxDate,
    yearPicker: false,
    rangePicker: true,
    headerPlaceholder: '언제 시간되세요?',
    toolbarCloseText: '닫기',
  });
</script>

    <div class="popup map-popup">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="center sliding">위치</div>

      <div class="right">
        <a href="#" class="link icon-only close-popup">
          <i class="material-icons clear"></i>
        </a>
      </div>
    </div>
  </div>

  <div id="full-page-map" class="map" style="height: 100vh;"></div>
</div>


        <script type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js"></script>

  <script>
    $(function() {
      $(document).on('click', '.inipay-desktop-btn', function (e) {
        e.preventDefault();

        INIStdPay.pay('inipay-desktop-payment-form');
      });
    });
  </script>

<script src="https://mup.mobilians.co.kr/js/ext/ext_inc_comm.js"></script>

<script>
  $(function() {
    $(document).on('click', '.mcash-btn', function (e) {
      e.preventDefault();


      if (App.util.isCordova()) {
        if (device.platform === 'iOS') {
          var options = "location=no,closebuttoncaption=닫기";
        } else {
          var options = "location=yes";
        }

        var inAppBrowserRef = window.open(App.mcash_order_url, '_blank', options);

        inAppBrowserRef.addEventListener('loadstart', function(event) {
          console.log('loadstart', event);

          // handling cancel
          if (event.url.match('/steps/payment')) {
            inAppBrowserRef.close();
          }

          if (event.url.match('/payment/fail')) {
            inAppBrowserRef.close();
            window.location = event.url
          }

          if (event.url.match('/steps/complete')) {
            inAppBrowserRef.close();
            window.location = event.url
          }
        });

        inAppBrowserRef.addEventListener('loadstop', function(event) {
          console.log('loadstop', event);
        });

        inAppBrowserRef.addEventListener('loaderror', function(event) {
          console.log('loaderror', event);
        });

        inAppBrowserRef.addEventListener('exit', function(event) {
          console.log('exit', event);
        });
      } else {
        var form = document.getElementById('mcash-payment-form');
        MCASH_PAYMENT(form);
      }
    });
  });
</script>

    <script>
</script>

    
  

<div class="offline-ui offline-ui-up"><div class="offline-ui-content"></div><a href="" class="offline-ui-retry"></a></div><script src="//browser-update.org/update.min.js"></script><div id="hs-beacon"><div data-reactroot=""><iframe style="border: none; bottom: 0px; height: 0px; position: fixed; right: 0px; top: 0px; width: 0px; z-index: 11111; left: 0px; background: rgba(0, 0, 0, 0.5);"></iframe></div></div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/RQ7NiRXMcYA.js?version=42#channel=f21cddacfdf1328&amp;origin=https%3A%2F%2Fwww.zipbob.net" style="border: none;"></iframe></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div></div></body></html>