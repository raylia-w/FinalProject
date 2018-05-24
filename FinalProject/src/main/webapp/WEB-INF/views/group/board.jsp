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
<meta name="csrf-token" content="H9VT0kfs2Rf+y1cQfK+4OWrY+qV5v/K9k6Qv1pSenx+t9W15JQmomaU6abgMu4Nny+6trh+rXw/rE9DKLI0Ixg==">
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

          
<div data-page="comments-index" class="page product_57b177c8e76f681b4a000003 comments index">
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

      <div class="card content-block new-comment-block">
        <div class="content-block block-title">
          아직 궁금증이 있으시다구요? 댓글을 통해서 설레임을 같이 나눠 보아요.
        </div>

        <div class="content-block">
          <a class="button button-big" href="/p/57b177c8e76f681b4a000003/comments/new">
            <i class="material-icons forum"></i>  댓글을 남겨주세요
</a>        </div>
      </div>

        <div class="content-block-title text-title">
          문의 43개
        </div>

        <div class="comment-block">
          <div class="card comment-card comment_5983affe532c2841712b03e9">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a7/63/52ab23ade76f684f560006c2/thumb_profile_default.png" alt="Thumb profile default">
    </div>
    <div class="name">샤부작</div>
    <div class="date">2017/08/04</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 추가모집 있어요?</p>

<p>신청한다는걸 깜빡했어요</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5983affe532c2841712b03e9" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5927f4a3532c28195e38fdd0">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">배지훈</div>
    <div class="date">2017/05/26</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘은 마감인가요</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5927fa71532c28195e39003e">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/26</div>
        </div>
      </div>

      <div class="item-text">
        오늘은 모임이 없습니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5927f4a3532c28195e38fdd0" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_591e6c71532c28793e388dc5">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/f8/4a/591be938532c2873623824ba/thumb_223563_217631498247343_6936179_n.jpg" alt="Thumb 223563 217631498247343 6936179 n">
    </div>
    <div class="name">Jaewon Lee</div>
    <div class="date">2017/05/19</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>제가 2번 결제 했는데 친구(이석관)이 결제 총 3번이 되어 버렸습니다. 인원 1명분 취소 되는 것 알고 계세요.</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_591e6d2f532c287933388f3e">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/19</div>
        </div>
      </div>

      <div class="item-text">
        결제는 저희 소관이 아니기 때문에 집밥에 문의하시기 바랍니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="591e6c71532c28793e388dc5" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_591e4b1c532c2879333883ba">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Moooniii</div>
    <div class="date">2017/05/19</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>아 ㅠ 신청하려는데 오늘꺼 ㅠㅠ 마감인가요..</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_591e6cf2532c28793e388dda">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/19</div>
        </div>
      </div>

      <div class="item-text">
        죄송하지만 오늘 모임은 마감되었습니다ㅜㅜ 감사합니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="591e4b1c532c2879333883ba" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_591e38fd532c287933388001">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name"> MIN</div>
    <div class="date">2017/05/19</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>19일 모임은 마감인가요? 혹시 갑자기 취소되거나 하는건 없을까요? 어제까진 가능했는데 결제가 안되서 아침에 다시보니 마감이네요ㅜ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_591e6cef532c28793e388dd7">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/19</div>
        </div>
      </div>

      <div class="item-text">
        죄송하지만 오늘 모임은 마감되었습니다ㅜㅜ 감사합니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="591e38fd532c287933388001" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5914782b532c287cd2383afa">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">쫑</div>
    <div class="date">2017/05/11</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>저 .. 고민고민 하다가 참여 하기를 눌렀는데 이미 마감이 되었네용 ㅠㅠ  내일 모임은 참가가 불가능 한거겠죠???   참가 하고 싶었는데 ㅠㅠ 마감 된거쥬 ?? </p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_59153b62532c287cd23861a0">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/12</div>
        </div>
      </div>

      <div class="item-text">
        네 죄송합니다! 이번주는 인원 마감이요:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5914782b532c287cd2383afa" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_59140d20532c283785384f73">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/95/61/562a43cce76f681f2d000000/thumb_ico_default1.jpg" alt="Thumb ico default1">
    </div>
    <div class="name">동글동글이</div>
    <div class="date">2017/05/11</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>내일 모임 참여하려고 결제하는 순간 꽉 차버려서 신청을 못했어요... 혹시 공석 있을까요?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_59140e4e532c287cd23811f7">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/11</div>
        </div>
      </div>

      <div class="item-text">
        네~ 자리 만들어 드릴게요:) 내일 오셔서 결제하시면 됩니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="59140d20532c283785384f73" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5913d665532c283790384079">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">나라</div>
    <div class="date">2017/05/11</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요...^^
<br>연령대를 알고 싶어요..</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5913d68a532c2837903840ac">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/11</div>
        </div>
      </div>

      <div class="item-text">
        보통은 30대 분들이 골고루 많이 오십니다:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5913d665532c283790384079" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_59127e5a532c280f1238cae1">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">상진</div>
    <div class="date">2017/05/10</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요. 혹시 내일 참여 가능한가요? 
<br>그리고 제가 당일에 현금으로 내도 괜찮나요? 감사합니다.</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="59127e5a532c280f1238cae1" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_59127da7532c280f1238ca76">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">상진</div>
    <div class="date">2017/05/10</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요. 혹시 내일 참여 가능한가요? 
<br>그리고 제가 당일에 현금으로 내도 괜찮나요? 감사합니다.</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_59127e04532c280d0b387d12">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/05/10</div>
        </div>
      </div>

      <div class="item-text">
        모임은 금요일입니다. 되도록이면 신청 후 결제해주세요:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="59127da7532c280f1238ca76" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58f98b28532c2877b41048b9">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Lee</div>
    <div class="date">2017/04/21</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요 예전에 참석했던 남성입니다..^^출장갔다가 지금와서요 혹 오늘 자리 하나 가능할까용...???</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58f98efa532c2877b41049b8">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/04/21</div>
        </div>
      </div>

      <div class="item-text">
        오늘 모임은 인원이 다 찼습니다~! 다음에 찾아주세요:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58f98b28532c2877b41048b9" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58f98b27532c2877b41048b6">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Lee</div>
    <div class="date">2017/04/21</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요 예전에 참석했던 남성입니다..^^출장갔다가 지금와서요 혹 오늘 자리 하나 가능할까용...???</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58f98b27532c2877b41048b6" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58f98b26532c2877b7104897">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Lee</div>
    <div class="date">2017/04/21</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요 예전에 참석했던 남성입니다..^^출장갔다가 지금와서요 혹 오늘 자리 하나 가능할까용...???</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58f98b26532c2877b7104897" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58f98b24532c2877b7104894">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Lee</div>
    <div class="date">2017/04/21</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요 예전에 참석했던 남성입니다..^^출장갔다가 지금와서요 혹 오늘 자리 하나 가능할까용...???</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58f98b24532c2877b7104894" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58f899f6532c282013b2682b">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">와니온</div>
    <div class="date">2017/04/20</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>근처에 주차장이나 주차공간이 있을까요?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58f98ee1532c2877b71049d1">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/04/21</div>
        </div>
      </div>

      <div class="item-text">
        가게 앞에 주차 공간 있습니다:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58f899f6532c282013b2682b" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58e7132b532c282bec1ab6cf">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">Hwan</div>
    <div class="date">2017/04/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임은 마감인가요?
<br>혹시 가능하면 말씀주세요 ^ ^</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58e7132b532c282bec1ab6cf" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58942d70e76f68356f000007">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a7/b3/57bae5a8e76f68556a000014/thumb_10410242_737803016340637_7841722765575178023_n.jpg" alt="Thumb 10410242 737803016340637 7841722765575178023 n">
    </div>
    <div class="name">장혜영</div>
    <div class="date">2017/02/03</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>집밥지기님이 따로 연락을 안받으시네요 ㅎㅎ 8시에 바로 약속 장소로 가면 되는건가요 ?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58942deb532c280bb0045cc1">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/02/03</div>
        </div>
      </div>

      <div class="item-text">
        네~! 8시에 브리지로 오시면 됩니다^^

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58942d70e76f68356f000007" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5893096e532c2805ff94aac2">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">윤슬</div>
    <div class="date">2017/02/02</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>정원이 몇 명인지, 대략 몇 시까지 진행되는지 궁금합니다~</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58936b7a532c28223d9d95d5">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2017/02/03</div>
        </div>
      </div>

      <div class="item-text">
        정원은 보통 10명 이내로 진행되며, 대략 10시 반쯤 모든 일정이 마무리 됩니다:) 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5893096e532c2805ff94aac2" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_588a0b2a532c287c87cd0301">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/10/e9/527dae56e76f68623c006d0f/thumb_20170120_090329_299.jpg" alt="Thumb 20170120 090329 299">
    </div>
    <div class="name">milk</div>
    <div class="date">2017/01/26</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>내일은 추가 모집은 없는 것인가요? 참가하고 싶은데 공지를 너무 늦게 봤네요</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="588a0b2a532c287c87cd0301" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5865f4f7532c284b54508c30">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/30/36/58327bbbe76f68226d000000/thumb_14670864_1259304644132228_1296951711743861576_n.jpg" alt="Thumb 14670864 1259304644132228 1296951711743861576 n">
    </div>
    <div class="name">Hanna Hong</div>
    <div class="date">2016/12/30</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘은 추가 모집은 없는것이죠!?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5865f68e532c284b4c508ccd">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        공석 한자리 났습니다:) 참가원하시면 8시까지 브리지로 오시면 됩니다! 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5865f4f7532c284b54508c30" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58656b45532c284d7eb323f3">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">보노보노</div>
    <div class="date">2016/12/30</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>공석 댓글을 늦게봤는데 지금은 참가 안되나요?ㅠ 혹시 또 공석 생기면 알려주세요ㅠ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5865ad0d532c284d6fb3285a">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        사정상 취소하신 분이 계셔서 한자리 공석있습니다:) 오늘 8시까지 브리지로 오셔서 말씀해주시면 됩니다ㅎㅎ

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58656b45532c284d7eb323f3" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58650e90532c284d6fb31c47">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/19/ac/5442a38a32363753a50e0000/thumb_Screenshot_2015-05-24-07-06-35.png" alt="Thumb screenshot 2015 05 24 07 06 35">
    </div>
    <div class="name">WONNY</div>
    <div class="date">2016/12/29</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>혹시 공석이 생긴다면 카톡 아디로 연락한번 부탁드립니다~^^</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58650fb7532c284d7eb31c17">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        검색했는데 아이디가 안나오네요! 공석 있습니다:) 내일 8시까지 브리지로 오셔서 말해주시면 됩니다ㅎㅎ

      </div>
    </div>
  </div>
</li><li class="comment_5865129e532c284d77b31ccb">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/19/ac/5442a38a32363753a50e0000/thumb_Screenshot_2015-05-24-07-06-35.png" alt="Thumb screenshot 2015 05 24 07 06 35">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          WONNY
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        네 그럼 예약 된걸로 알고 있을께요~~감사합니다!!! 앗~~그리구 다시 검색해보시면 아디 나오실거 예요~^^

      </div>
    </div>
  </div>
</li><li class="comment_5865ad52532c284d7eb32751">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        네네~!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58650e90532c284d6fb31c47" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5864cf28532c283147618a28">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">어떤날</div>
    <div class="date">2016/12/29</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>매일 참석하기다 어려워 취소하려는데.. 취소다 안되네요.. 어떻게 해야하죠?? ㅜ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5864d07e532c283144618a31">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        결제관련문의는 집밥으로 해주세요:) 저희 담당이 아니라.. 죄송합니다ㅜ

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5864cf28532c283147618a28" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_58646f51532c287a67476673">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a8/4e/5552bcd73236372f59020000/thumb_%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2016-06-02_%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB_10.47.33.png" alt="Thumb %e1%84%89%e1%85%b3%e1%84%8f%e1%85%b3%e1%84%85%e1%85%b5%e1%86%ab%e1%84%89%e1%85%a3%e1%86%ba 2016 06 02 %e1%84%8b%e1%85%a9%e1%84%8c%e1%85%a5%e1%86%ab 10.47.33">
    </div>
    <div class="name">열매</div>
    <div class="date">2016/12/29</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>앗..저도 내일 모암 가고싶은데 안될까요? ㅜ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5865f6b5532c284b54508c5a">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        공석이 한자리 났습니다:) 참가 원하시면 8시까지 브리지로 오시면 됩니다~ 와서 아이디 말씀 해주세요!

      </div>
    </div>
  </div>
</li><li class="comment_5865246d532c284d7eb31f38">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a8/4e/5552bcd73236372f59020000/thumb_%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2016-06-02_%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB_10.47.33.png" alt="Thumb %e1%84%89%e1%85%b3%e1%84%8f%e1%85%b3%e1%84%85%e1%85%b5%e1%86%ab%e1%84%89%e1%85%a3%e1%86%ba 2016 06 02 %e1%84%8b%e1%85%a9%e1%84%8c%e1%85%a5%e1%86%ab 10.47.33">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          열매
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        앗 저 참석하고싶은데 ㅜㅜ 늦엇나요? ㅜㅜ

      </div>
    </div>
  </div>
</li><li class="comment_5865f6b7532c284b54508c5d">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        공석이 한자리 났습니다:) 참가 원하시면 8시까지 브리지로 오시면 됩니다~ 와서 아이디 말씀 해주세요!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="58646f51532c287a67476673" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_586435b2532c2823a54769c1">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">보노보노</div>
    <div class="date">2016/12/29</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>30일은 더 신청이 안되나요?ㅠ 신청하려고 했는데 마감이네요ㅠㅠ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_58649193532c283b271f4a14">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        죄송합니다~ 내일 모임은 정원이 다 찼어요! 다음에 기회가 되면 꼭 놀러오세요:)

      </div>
    </div>
  </div>
</li><li class="comment_5864cf88532c283141618ab9">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/29</div>
        </div>
      </div>

      <div class="item-text">
        공석이 한자리 났어요~ 신청원하시면 댓글 달아주세요:)

      </div>
    </div>
  </div>
</li><li class="comment_5865699e532c284d77b32365">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          보노보노
        </div>

        <div class="item-after">
          <div class="date">2016/12/30</div>
        </div>
      </div>

      <div class="item-text">
        공석 지금봤어요ㅠ 참석 가능한가요??

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="586435b2532c2823a54769c1" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_5861be0ae76f681246000000">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/27/4a/555dd14632363750b4060000/thumb_IMG_4635.JPG" alt="Thumb img 4635">
    </div>
    <div class="name">BE</div>
    <div class="date">2016/12/27</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>30일에 친구와 둘이 갈거라 두번 신청했어요 :D 혹시 하나 취소하실까봐 미리 알려드려요~ㅎㅎㅎ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="5861be0ae76f681246000000" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_584f5498532c28195b8443bc">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/b3/cd/55c73978e76f684829000002/thumb_v0v0807.jpg" alt="Thumb v0v0807">
    </div>
    <div class="name">튜리💕</div>
    <div class="date">2016/12/13</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>30일 모임을 가고싶은데... 술도 마시고 저녁에 모이는 거라서... 몇시쯤끝나는지 알수있을까요?ㅠㅠ 밤새노는것도 자신이 있지만 어떻게되는 건가 싶어서요 히히 </p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_584f5648532c281a3e845e96">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/13</div>
        </div>
      </div>

      <div class="item-text">
        보통은 10시 반쯤 모든 프로그램이 끝납니다:) 원하시는 분들끼리 2파를 가시기도 하구요!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="584f5498532c28195b8443bc" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_581f46c5532c28224f4e5d23">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/df/f6/581f3b97532c2822524e5dd9/thumb_minser33.jpg" alt="Thumb minser33">
    </div>
    <div class="name">낙타</div>
    <div class="date">2016/11/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>녹사평역에서 걸어가야 하나요?? 모임은 몇시정도에 끝나는지 알려주시면 감사하겠습니다</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_5850c4a4532c28186384571c">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/12/14</div>
        </div>
      </div>

      <div class="item-text">
        10시반에 모임은 끝나구요!그 후는 자유세요 :)
녹사평2번출구에서 해방촌입구로 오셔서 마을버스타시는게 좋아요! 남산교회에서 하차!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="581f46c5532c28224f4e5d23" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57fffec0532c285be7fa4586">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">좀비</div>
    <div class="date">2016/10/14</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임 취소 되었나요?
<br>신청은 되는 것 같아서 여쭈어봅니다~;;</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_580015e7532c285c09fa4620">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/14</div>
        </div>
      </div>

      <div class="item-text">
        취소 되었습니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57fffec0532c285be7fa4586" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57ff8516532c281e4a65d75f">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">안냐세요</div>
    <div class="date">2016/10/13</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>내일 모임 몇자리 비었을까요??</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57ff8555532c281e4a65d76c">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/13</div>
        </div>
      </div>

      <div class="item-text">
        내일 모임 취소되었습니다~

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57ff8516532c281e4a65d75f" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57f76f62532c287f73d71d57">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">진현주</div>
    <div class="date">2016/10/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>혹시... 인원 추가 가능할까요?!ㅠㅜ </p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57f76f94532c287f6fd71d48">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        오늘은 마감이요..!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57f76f62532c287f73d71d57" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57f74942532c28767ebe508c">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">konsn</div>
    <div class="date">2016/10/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>저두 참석해도 될까요??
<br>혹시 취소한 분이 계실까 해서
<br>늦었지만 문의 드려요.^^</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57f74e63532c28767ebe5150">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        네~ 8시까지 오시면 됩니다^^ 확실한 참석여부 댓글로 달아주세요!

      </div>
    </div>
  </div>
</li><li class="comment_57f74eda532c28767ebe516f">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          konsn
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        네 꼭 참석할께요.^^

      </div>
    </div>
  </div>
</li><li class="comment_57f74fa1532c28766abe51a1">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        네:) 이따 뵙겠습니다!

      </div>
    </div>
  </div>
</li><li class="comment_57f750a2532c28767ebe51b7">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          konsn
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        번거로우실텐데 받아주셔서 감사드려요.
집밥 사이트가 버벅거려서ㅠ_ㅠ 
답변을 잘 못 달았네요.~~

      </div>
    </div>
  </div>
</li><li class="comment_57f78930532c287f73d71fe3">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          konsn
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        지금 가고 있는중인데 넘 막히네요.
5시에 출발했는데 9시에나 도착할 것 같아요.ㅠ_ㅠ 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57f74942532c28767ebe508c" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57f7427b532c28766abe505a">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2f/91/550c52c732363749b2000000/thumb_43dew.jpg" alt="Thumb 43dew">
    </div>
    <div class="name">스니키</div>
    <div class="date">2016/10/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임 마감인거죠? 참석하고 싶은데 추가인원은 안 받으시나요?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57f742c9532c28767ebe503b">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        마지막 자리 만들어 드릴게요^^ 취소하신 분이 계셔서! 8시까지 오시면 됩니다:)

      </div>
    </div>
  </div>
</li><li class="comment_57f742fa532c28766abe5093">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        확실한 참석 여부 댓글로 남겨주세요^^

      </div>
    </div>
  </div>
</li><li class="comment_57f7434b532c287694be50c0">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2f/91/550c52c732363749b2000000/thumb_43dew.jpg" alt="Thumb 43dew">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          스니키
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        저 참석이요!^^

      </div>
    </div>
  </div>
</li><li class="comment_57f74980532c287694be5148">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        알겠습니다!

      </div>
    </div>
  </div>
</li><li class="comment_57f74c80532c28767ebe50ff">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2f/91/550c52c732363749b2000000/thumb_43dew.jpg" alt="Thumb 43dew">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          스니키
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        아 죄송합니다ㅠㅜ 오늘 야근이 잡혔네요~ 번거롭게해드려 죄송해요~ 저는 다음 기회에 참석하겠습니다^^

      </div>
    </div>
  </div>
</li><li class="comment_57f74fa9532c287671be50f8">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        괜찮습니다^^

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57f7427b532c28766abe505a" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57f6fbda532c281f17a9532b">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/01/f6/5577c8923236373391000004/thumb_10481851_10205314498714711_2004618855809421087_n.jpg" alt="Thumb 10481851 10205314498714711 2004618855809421087 n">
    </div>
    <div class="name">Sam Yoo</div>
    <div class="date">2016/10/07</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>안녕하세요
<br>혹시 못오시는 분 발생하면 알려주세요
<br>감사합니다</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57f742af532c287671be4ff5">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        자리 만들어 드릴게요:) 8시까지 오시면 됩니다!

      </div>
    </div>
  </div>
</li><li class="comment_57f742f0532c28766abe5091">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        확실한 참석여뷰 댓글로 남겨주시면 됩니다!

      </div>
    </div>
  </div>
</li><li class="comment_57f75f9f532c287694be5312">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/01/f6/5577c8923236373391000004/thumb_10481851_10205314498714711_2004618855809421087_n.jpg" alt="Thumb 10481851 10205314498714711 2004618855809421087 n">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          Sam Yoo
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        이제서야 확인합니다. 참석 가능한가요?

      </div>
    </div>
  </div>
</li><li class="comment_57f75fad532c287671be5249">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/01/f6/5577c8923236373391000004/thumb_10481851_10205314498714711_2004618855809421087_n.jpg" alt="Thumb 10481851 10205314498714711 2004618855809421087 n">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          Sam Yoo
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        늦었나요? ㅠㅠ

      </div>
    </div>
  </div>
</li><li class="comment_57f760f0532c287671be526b">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        아니에요^^ 8시까지 오시면 됩니다! 이따 뵐게요:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57f6fbda532c281f17a9532b" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57f661ec532c281f4da94b84">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">김소영</div>
    <div class="date">2016/10/06</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>10월7일 금욜모임 가능한가요?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57f668d6532c281f17a94cdf">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        죄송하지만 7일 모임은 정원이 다 찼습니다!

      </div>
    </div>
  </div>
</li><li class="comment_57f740c0532c28766abe501b">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/10/07</div>
        </div>
      </div>

      <div class="item-text">
        한자리가 비어서 참석 가능하십니다! 참석여부 댓글로 달아주시고 현장에 오셔서 결제해주시면 됩니다^^

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57f661ec532c281f4da94b84" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57e4caef532c281904dd5dde">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">슈미씨</div>
    <div class="date">2016/09/23</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임 참가 너무너무 희망하는데 혹시 인원추가 가능할까요 ?! 😔</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57e4d062532c2818f2dd5d55">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/23</div>
        </div>
      </div>

      <div class="item-text">
        오늘은 다 찼습니다.. 죄송합니다!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57e4caef532c281904dd5dde" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57e47ce1532c281904dd58b9">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/35/c0/57d9d189532c2815706af6ad/thumb_image.jpeg" alt="Thumb image">
    </div>
    <div class="name">mjay</div>
    <div class="date">2016/09/23</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>자리있나요? 마감이라니 슬퍼요😢</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57e47d22532c281901dd57c2">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/23</div>
        </div>
      </div>

      <div class="item-text">
        추가로 한자리 더 만들어 드릴 수 있으니 원하시면 연락 주세요!

      </div>
    </div>
  </div>
</li><li class="comment_57e47d93532c281904dd58c6">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/35/c0/57d9d189532c2815706af6ad/thumb_image.jpeg" alt="Thumb image">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          mjay
        </div>

        <div class="item-after">
          <div class="date">2016/09/23</div>
        </div>
      </div>

      <div class="item-text">
        어떻게 연락드리면 되죠? 8시까지 가면 되나영?

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57e47ce1532c281904dd58b9" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57e46e2c532c281912dd5849">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a8/4e/5552bcd73236372f59020000/thumb_%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2016-06-02_%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB_10.47.33.png" alt="Thumb %e1%84%89%e1%85%b3%e1%84%8f%e1%85%b3%e1%84%85%e1%85%b5%e1%86%ab%e1%84%89%e1%85%a3%e1%86%ba 2016 06 02 %e1%84%8b%e1%85%a9%e1%84%8c%e1%85%a5%e1%86%ab 10.47.33">
    </div>
    <div class="name">열매</div>
    <div class="date">2016/09/23</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임 마감인가요 ㅜㅜ</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57e46e5f532c281901dd5743">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/23</div>
        </div>
      </div>

      <div class="item-text">
        자리 만들어 드릴게요:) 연락주세요!

      </div>
    </div>
  </div>
</li><li class="comment_57e47aa8532c281904dd588c">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/a8/4e/5552bcd73236372f59020000/thumb_%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2016-06-02_%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB_10.47.33.png" alt="Thumb %e1%84%89%e1%85%b3%e1%84%8f%e1%85%b3%e1%84%85%e1%85%b5%e1%86%ab%e1%84%89%e1%85%a3%e1%86%ba 2016 06 02 %e1%84%8b%e1%85%a9%e1%84%8c%e1%85%a5%e1%86%ab 10.47.33">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          열매
        </div>

        <div class="item-after">
          <div class="date">2016/09/23</div>
        </div>
      </div>

      <div class="item-text">
        연락처가 없어요!

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57e46e2c532c281912dd5849" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57db9276532c287bc76b1640">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/c0/1f/55dfe28ee76f680e6c000000/thumb_IMG_20160909_001155.jpg" alt="Thumb img 20160909 001155">
    </div>
    <div class="name">개망초</div>
    <div class="date">2016/09/16</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>추가 가능하시면 답글 연락부탁드려요. 참가하고싶어요😊</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57db92bd532c2871b86b2f59">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/16</div>
        </div>
      </div>

      <div class="item-text">
        네~ 자리 만들어 드릴게요:) 8시까지 오셔서 성함 말씀해주시면 됩니다!

      </div>
    </div>
  </div>
</li><li class="comment_57db9388532c2871b86b2f68">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/c0/1f/55dfe28ee76f680e6c000000/thumb_IMG_20160909_001155.jpg" alt="Thumb img 20160909 001155">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          개망초
        </div>

        <div class="item-after">
          <div class="date">2016/09/16</div>
        </div>
      </div>

      <div class="item-text">
        네 감사합니다. 8시에 뵐께요😊

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57db9276532c287bc76b1640" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57db6d13532c285a376af539">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/e2/10/521f6a01e76f682e2d000412/thumb_1239859_573144439442422_2076772443_n.jpg" alt="Thumb 1239859 573144439442422 2076772443 n">
    </div>
    <div class="name">Dasom  Kim</div>
    <div class="date">2016/09/16</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>오늘 모임은 마감인가요?
</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57db792d532c2871b86b2dad">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/16</div>
        </div>
      </div>

      <div class="item-text">
        정원은 다 찼지만 원하시면 추가로 자리를 만들어 드릴 수 있습니다. 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57db6d13532c285a376af539" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57d787c5532c2871af6af5df">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/30/b3/55a3985732363775bf000000/thumb_susia224.jpg" alt="Thumb susia224">
    </div>
    <div class="name">박순영</div>
    <div class="date">2016/09/13</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>39세인대 되나요?</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57d78809532c2871b56af72a">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/13</div>
        </div>
      </div>

      <div class="item-text">
        편히 오세요~ 나이 제한은 없습니다:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57d787c5532c2871af6af5df" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57d529f7532c280cdff4ba3f">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/20/17/53a93241e76f686fba000010/thumb_profileImage.jpg" alt="Thumb profileimage">
    </div>
    <div class="name">한나</div>
    <div class="date">2016/09/11</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>혹 평균나이대를 알수있을까요? 다양한 분들이 오시겠지만 제가어린편이라 제가 못어울릴까싶어 댓글남깁니다:-)</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57d52a2b532c280cedf4b8e6">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/11</div>
        </div>
      </div>

      <div class="item-text">
        20-30대 분들이에요:) 

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57d529f7532c280cdff4ba3f" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div><div class="card comment-card comment_57c92e95532c280381c1c73e">
  <div class="card-header">
    <div class="avatar">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/assets/fallback/profile-a0d2f974079da9a686f5d217243ad74768d6bbc241e26dcf608acf46a69afff8.gif" alt="Profile">
    </div>
    <div class="name">까쇼</div>
    <div class="date">2016/09/02</div>
  </div>

  <div class="card-content">
    <div class="card-content-inner">
      <p>혹시 오늘 참여 가능할까요? 한명이고 현장에서 드릴게요</p>
    </div>
  </div>


  <div class="list-block media-list children-block">
    <ul>
      <li class="comment_57c92eee532c28035bc1c719">
  <div class="item-content">
    <div class="item-media">
      <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/8a/a2/57b164f3e76f68012d000001/thumb_%EB%A1%9C%EA%B3%A0%EC%8A%A4%ED%8B%B0%EC%BB%A4.jpg" alt="Thumb %eb%a1%9c%ea%b3%a0%ec%8a%a4%ed%8b%b0%ec%bb%a4">
    </div>

    <div class="item-inner">
      <div class="item-title-row">
        <div class="item-title">
          해방촌 브리지
        </div>

        <div class="item-after">
          <div class="date">2016/09/02</div>
        </div>
      </div>

      <div class="item-text">
        죄송합니다~ 오늘은 자리가 꽉 차서 불가능합니다. 저희 모임은 매주 금,토 에 진행되니 다음에 꼭 봬요:)

      </div>
    </div>
  </div>
</li>
    </ul>
  </div>

  <form novalidate="novalidate" class="simple_form new_comment" id="new_comment" action="/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
    <div class="list-block inputs-list">
      <ul>
        <li>
          <div class="item-content">
            <div class="item-media">
                <img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
            </div>

            <div class="item-inner">
              <div class="item-input-wrapper string required comment_body"><div class="item-input item-input-field"><input class="string required" placeholder="아직 궁금증이 있으시다구요? 댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comment[body]" id="comment_body"></div></div>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <input type="hidden" value="57c92e95532c280381c1c73e" name="comment[parent_id]" id="comment_parent_id">
    <input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
</form></div>
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

    
  

<div class="offline-ui offline-ui-up"><div class="offline-ui-content"></div><a href="" class="offline-ui-retry"></a></div><script src="//browser-update.org/update.min.js"></script><div id="hs-beacon"><div data-reactroot=""><iframe style="border: none; bottom: 0px; height: 0px; position: fixed; right: 0px; top: 0px; width: 0px; z-index: 11111; left: 0px; background: rgba(0, 0, 0, 0.5);"></iframe></div></div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/RQ7NiRXMcYA.js?version=42#channel=f33779eb925fcf4&amp;origin=https%3A%2F%2Fwww.zipbob.net" style="border: none;"></iframe></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div></div></body></html>