/*! formstone v0.5.3 [core.js] 2015-04-17 | MIT License | formstone.it */

var Formstone=this.Formstone=function(a,b,c){"use strict";function d(a,b,c,d){var e,f={raw:{}};d=d||{};for(e in d)d.hasOwnProperty(e)&&("classes"===a?(f.raw[d[e]]=b+"-"+d[e],f[d[e]]="."+b+"-"+d[e]):(f.raw[e]=d[e],f[e]=d[e]+"."+b));for(e in c)c.hasOwnProperty(e)&&("classes"===a?(f.raw[e]=c[e].replace(/{ns}/g,b),f[e]=c[e].replace(/{ns}/g,"."+b)):(f.raw[e]=c[e].replace(/.{ns}/g,""),f[e]=c[e].replace(/{ns}/g,b)));return f}function e(){var a,b={transition:"transitionend",MozTransition:"transitionend",OTransition:"otransitionend",WebkitTransition:"webkitTransitionEnd"},d=["transition","-webkit-transition"],e={transform:"transform",MozTransform:"-moz-transform",OTransform:"-o-transform",msTransform:"-ms-transform",webkitTransform:"-webkit-transform"},f="transitionend",g="",h="",i=c.createElement("div");for(a in b)if(b.hasOwnProperty(a)&&a in i.style){f=b[a],k.support.transition=!0;break}m.transitionEnd=f+".{ns}";for(a in d)if(d.hasOwnProperty(a)&&d[a]in i.style){g=d[a];break}k.transition=g;for(a in e)if(e.hasOwnProperty(a)&&e[a]in i.style){k.support.transform=!0,h=e[a];break}k.transform=h}function f(){k.windowWidth=k.$window.width(),k.windowHeight=k.$window.height(),n=j.startTimer(n,o,g)}function g(){for(var a in k.ResizeHandlers)k.ResizeHandlers.hasOwnProperty(a)&&k.ResizeHandlers[a].callback.call(b,k.windowWidth,k.windowHeight)}function h(a,b){return parseInt(a.priority)-parseInt(b.priority)}var i=function(){this.Plugins={},this.ResizeHandlers=[],this.window=b,this.$window=a(b),this.document=c,this.$document=a(c),this.$body=null,this.windowWidth=0,this.windowHeight=0,this.userAgent=b.navigator.userAgent||b.navigator.vendor||b.opera,this.isFirefox=/Firefox/i.test(this.userAgent),this.isChrome=/Chrome/i.test(this.userAgent),this.isSafari=/Safari/i.test(this.userAgent)&&!this.isChrome,this.isMobile=/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(this.userAgent),this.isFirefoxMobile=this.isFirefox&&this.isMobile,this.transform=null,this.transition=null,this.support={file:!!(b.File&&b.FileList&&b.FileReader),history:!!(b.history&&b.history.pushState&&b.history.replaceState),matchMedia:!(!b.matchMedia&&!b.msMatchMedia),raf:!(!b.requestAnimationFrame||!b.cancelAnimationFrame),touch:!!("ontouchstart"in b||b.DocumentTouch&&c instanceof b.DocumentTouch),transition:!1,transform:!1}},j={killEvent:function(a,b){try{a.preventDefault(),a.stopPropagation(),b&&a.stopImmediatePropagation()}catch(c){}},startTimer:function(a,b,c,d){return j.clearTimer(a),d?setInterval(c,b):setTimeout(c,b)},clearTimer:function(a,b){a&&(b?clearInterval(a):clearTimeout(a),a=null)},sortAsc:function(a,b){return parseInt(b)-parseInt(a)},sortDesc:function(a,b){return parseInt(b)-parseInt(a)}},k=new i,l={base:"{ns}",element:"{ns}-element"},m={namespace:".{ns}",blur:"blur.{ns}",change:"change.{ns}",click:"click.{ns}",dblClick:"dblclick.{ns}",drag:"drag.{ns}",dragEnd:"dragend.{ns}",dragEnter:"dragenter.{ns}",dragLeave:"dragleave.{ns}",dragOver:"dragover.{ns}",dragStart:"dragstart.{ns}",drop:"drop.{ns}",error:"error.{ns}",focus:"focus.{ns}",focusIn:"focusin.{ns}",focusOut:"focusout.{ns}",input:"input.{ns}",keyDown:"keydown.{ns}",keyPress:"keypress.{ns}",keyUp:"keyup.{ns}",load:"load.{ns}",mouseDown:"mousedown.{ns}",mouseEnter:"mouseenter.{ns}",mouseLeave:"mouseleave.{ns}",mouseMove:"mousemove.{ns}",mouseOut:"mouseout.{ns}",mouseOver:"mouseover.{ns}",mouseUp:"mouseup.{ns}",resize:"resize.{ns}",scroll:"scroll.{ns}",select:"select.{ns}",touchCancel:"touchcancel.{ns}",touchEnd:"touchend.{ns}",touchLeave:"touchleave.{ns}",touchMove:"touchmove.{ns}",touchStart:"touchstart.{ns}"};i.prototype.Plugin=function(c,e){return k.Plugins[c]=function(c,e){function f(b){var d="object"===a.type(b);b=a.extend(!0,{},e.defaults||{},d?b:{});for(var f=this,g=0,h=f.length;h>g;g++){var j=f.eq(g);if(!i(j)){var k=j.data(c+"-options"),l=a.extend(!0,{$el:j},b,"object"===a.type(k)?k:{});j.addClass(e.classes.raw.element).data(r,l),e.methods._construct.apply(j,[l].concat(Array.prototype.slice.call(arguments,d?1:0)))}}return f}function g(){e.functions.iterate.apply(this,[e.methods._destruct].concat(Array.prototype.slice.call(arguments,1))),this.removeClass(e.classes.raw.element).removeData(r)}function i(a){return a.data(r)}function n(b){if(this instanceof a){var c=e.methods[b];return"object"!==a.type(b)&&b?c&&0!==b.indexOf("_")?e.functions.iterate.apply(this,[c].concat(Array.prototype.slice.call(arguments,1))):this:f.apply(this,arguments)}}function o(c){var d=e.utilities[c]||e.utilities._initialize||!1;return d?d.apply(b,Array.prototype.slice.call(arguments,"object"===a.type(c)?0:1)):void 0}function p(b){e.defaults=a.extend(!0,e.defaults,b||{})}function q(b){for(var c=this,d=0,e=c.length;e>d;d++){var f=c.eq(d),g=i(f)||{};"undefined"!==a.type(g.$el)&&b.apply(f,[g].concat(Array.prototype.slice.call(arguments,1)))}return c}var r="fs-"+c;return e.initialized=!1,e.priority=e.priority||10,e.classes=d("classes",r,l,e.classes),e.events=d("events",c,m,e.events),e.functions=a.extend({getData:i,iterate:q},j,e.functions),e.methods=a.extend(!0,{_setup:a.noop,_construct:a.noop,_destruct:a.noop,_resize:!1,destroy:g},e.methods),e.utilities=a.extend(!0,{_initialize:!1,_delegate:!1,defaults:p},e.utilities),e.widget&&(a.fn[c]=n),a[c]=e.utilities._delegate||o,e.namespace=c,e.methods._resize&&(k.ResizeHandlers.push({namespace:c,priority:e.priority,callback:e.methods._resize}),k.ResizeHandlers.sort(h)),e}(c,e),k.Plugins[c]};var n=null,o=20;return k.$window.on("resize.fs",f),f(),a(function(){k.$body=a("body");for(var b in k.Plugins)k.Plugins.hasOwnProperty(b)&&!k.Plugins[b].initialized&&(k.Plugins[b].methods._setup.call(c),k.Plugins[b].initialized=!0)}),m.clickTouchStart=m.click+" "+m.touchStart,e(),k}(jQuery,this,document);
/*! formstone v0.5.3 [transition.js] 2015-04-17 | MIT License | formstone.it */

!function(a,b){"use strict";function c(a,c){if(c){a.$target=this.find(a.target),a.$check=a.target?a.$target:this,a.callback=c,a.styles=h(a.$check),a.timer=null;var d=a.$check.css(b.transition+"-duration"),f=parseFloat(d);b.support.transition&&d&&f?this.on(k.transitionEnd,a,e):a.timer=l.startTimer(a.timer,50,function(){g(a)},!0)}}function d(a){l.clearTimer(a.timer,!0),this.off(k.namespace)}function e(b){b.stopPropagation(),b.preventDefault();var c=b.data,d=b.originalEvent,e=c.target?c.$target:c.$el;c.property&&d.propertyName!==c.property||!a(d.target).is(e)||f(c)}function f(a){a.always||a.$el[j.namespace]("destroy"),a.callback.apply(a.$el)}function g(a){var b=h(a.$check);i(a.styles,b)||f(a),a.styles=b}function h(b){var c,d,e,f={};if(b instanceof a&&(b=b[0]),m.getComputedStyle){c=m.getComputedStyle(b,null);for(var g=0,h=c.length;h>g;g++)d=c[g],e=c.getPropertyValue(d),f[d]=e}else if(b.currentStyle){c=b.currentStyle;for(d in c)c[d]&&(f[d]=c[d])}return f}function i(b,c){if(a.type(b)!==a.type(c))return!1;for(var d in b)if(!b.hasOwnProperty(d)||!c.hasOwnProperty(d)||b[d]!==c[d])return!1;return!0}var j=b.Plugin("transition",{widget:!0,defaults:{always:!1,property:null,target:null},methods:{_construct:c,_destruct:d,resolve:f}}),k=j.events,l=j.functions,m=b.window}(jQuery,Formstone);
/*! formstone v0.5.3 [lightbox.js] 2015-04-17 | MIT License | formstone.it */

!function(a,b,c){"use strict";function d(){R=b.$body,S=a("html, body")}function e(){T&&j()}function f(a){this.on(N.click,a,i)}function g(){k(),this.off(N.namespace)}function h(b,c){b instanceof a&&i.apply(P,[{data:a.extend({},{$object:b},K,c||{})}])}function i(c){if(!T){var d=c.data,e=d.$el,f=d.$object,g=e&&e[0].href?e[0].href||"":"",h=e&&e[0].hash?e[0].hash||"":"",i=g.toLowerCase().split(".").pop().split(/\#|\?/),j=i[0],l=e?e.data(J+"-type"):"",m="image"===l||a.inArray(j,d.extensions)>-1||"data:image"===g.substr(0,10),o=g.indexOf("youtube.com/embed")>-1||g.indexOf("player.vimeo.com/video")>-1,q="url"===l||!m&&!o&&"http"===g.substr(0,4)&&!h,r="element"===l||!m&&!o&&!q&&"#"===h.substr(0,1),t="undefined"!=typeof f;if(r&&(g=h),!(m||o||q||r||t))return;if(O.killEvent(c),T=a.extend({},{visible:!1,gallery:{active:!1},isMobile:b.isMobile||d.mobile,isTouch:b.support.touch,isAnimating:!0,oldContentHeight:0,oldContentWidth:0},d),T.margin*=2,T.type=m?"image":o?"video":"element",m||o){var u=e.data(J+"-gallery");u&&(T.gallery.active=!0,T.gallery.id=u,T.gallery.$items=a("a[data-lightbox-gallery= "+T.gallery.id+"], a[rel= "+T.gallery.id+"]"),T.gallery.index=T.gallery.$items.index(T.$el),T.gallery.total=T.gallery.$items.length-1)}var w="";T.isMobile||(w+='<div class="'+[L.raw.overlay,T.customClass].join(" ")+'"></div>');var x=[L.raw.base,L.raw.loading,L.raw.animating,T.customClass];T.fixed&&x.push(L.raw.fixed),T.isMobile&&x.push(L.raw.mobile),T.isTouch&&x.push(L.raw.touch),q&&x.push(L.raw.iframed),(r||t)&&x.push(L.raw.inline),w+='<div class="'+x.join(" ")+'">',w+='<button type="button" class="'+L.raw.close+'">'+T.labels.close+"</button>",w+='<span class="'+L.raw.loading_icon+'"></span>',w+='<div class="'+L.raw.container+'">',w+='<div class="'+L.raw.content+'">',(m||o)&&(w+='<div class="'+L.raw.tools+'">',w+='<div class="'+L.raw.controls+'">',T.gallery.active&&(w+='<button type="button" class="'+[L.raw.control,L.raw.control_previous].join(" ")+'">'+T.labels.previous+"</button>",w+='<button type="button" class="'+[L.raw.control,L.raw.control_next].join(" ")+'">'+T.labels.next+"</button>"),T.isMobile&&T.isTouch&&(w+='<button type="button" class="'+[L.raw.caption_toggle].join(" ")+'">'+T.labels.captionClosed+"</button>"),w+="</div>",w+='<div class="'+L.raw.meta+'">',T.gallery.active&&(w+='<p class="'+L.raw.position+'"',T.gallery.total<1&&(w+=' style="display: none;"'),w+=">",w+='<span class="'+L.raw.position_current+'">'+(T.gallery.index+1)+"</span> ",w+=T.labels.count,w+=' <span class="'+L.raw.position_total+'">'+(T.gallery.total+1)+"</span>",w+="</p>"),w+='<div class="'+L.raw.caption+'">',w+=T.formatter.call(e,d),w+="</div></div>",w+="</div>"),w+="</div></div></div>",R.append(w),T.$overlay=a(L.overlay),T.$lightbox=a(L.base),T.$close=a(L.close),T.$container=a(L.container),T.$content=a(L.content),T.$tools=a(L.tools),T.$meta=a(L.meta),T.$position=a(L.position),T.$caption=a(L.caption),T.$controlBox=a(L.controls),T.$controls=a(L.control),T.isMobile?(T.paddingVertical=T.$close.outerHeight(),T.paddingHorizontal=0,T.mobilePaddingVertical=parseInt(T.$content.css("paddingTop"),10)+parseInt(T.$content.css("paddingBottom"),10),T.mobilePaddingHorizontal=parseInt(T.$content.css("paddingLeft"),10)+parseInt(T.$content.css("paddingRight"),10)):(T.paddingVertical=parseInt(T.$lightbox.css("paddingTop"),10)+parseInt(T.$lightbox.css("paddingBottom"),10),T.paddingHorizontal=parseInt(T.$lightbox.css("paddingLeft"),10)+parseInt(T.$lightbox.css("paddingRight"),10),T.mobilePaddingVertical=0,T.mobilePaddingHorizontal=0),T.contentHeight=T.$lightbox.outerHeight()-T.paddingVertical,T.contentWidth=T.$lightbox.outerWidth()-T.paddingHorizontal,T.controlHeight=T.$controls.outerHeight(),n(),T.gallery.active&&z(),Q.on(N.keyDown,A),R.on(N.clickTouchStart,[L.overlay,L.close].join(", "),k),T.gallery.active&&T.$lightbox.on(N.clickTouchStart,L.control,y),T.isMobile&&T.isTouch&&T.$lightbox.on(N.clickTouchStart,L.caption_toggle,p),T.$lightbox.transition({property:"opacity"},function(){m?s(g):o?v(g):q?C(g):r?B(g):t&&D(T.$object)}).addClass(L.raw.open),T.$overlay.addClass(L.raw.open)}}function j(a){"object"!=typeof a&&(T.targetHeight=arguments[0],T.targetWidth=arguments[1]),"element"===T.type?E(T.$content.find("> :first-child")):"image"===T.type?t():"video"===T.type&&w(),m()}function k(a){O.killEvent(a),T&&(T.$lightbox.transition("destroy"),T.$container.transition("destroy"),T.$lightbox.addClass(L.raw.animating).transition({property:"opacity"},function(){T.$lightbox.off(N.namespace),T.$container.off(N.namespace),Q.off(N.namespace),R.off(N.namespace),T.$overlay.remove(),T.$lightbox.remove(),T=null,Q.trigger(N.close)}),T.$lightbox.removeClass(L.raw.open),T.$overlay.removeClass(L.raw.open),T.isMobile&&S.removeClass(M.lock))}function l(){{var a=o();T.isMobile?0:T.duration}T.isMobile||T.$controls.css({marginTop:(T.contentHeight-T.controlHeight-T.metaHeight)/2}),!T.visible&&T.isMobile&&T.gallery.active&&T.$content.touch({axis:"x",swipe:!0}).on(N.swipe,G),T.$lightbox.transition({property:T.contentHeight!==T.oldContentHeight?"height":"width"},function(){T.$container.transition({property:"opacity"},function(){T.$lightbox.removeClass(L.raw.animating),T.isAnimating=!1}),T.$lightbox.removeClass(L.raw.loading),T.visible=!0,Q.trigger(N.open),T.gallery.active&&x()}),T.isMobile||T.$lightbox.css({height:T.contentHeight+T.paddingVertical,width:T.contentWidth+T.paddingHorizontal,top:T.fixed?0:a.top});var b=T.oldContentHeight!==T.contentHeight||T.oldContentWidth!==T.contentWidth;(T.isMobile||!b)&&T.$lightbox.transition("resolve"),T.oldContentHeight=T.contentHeight,T.oldContentWidth=T.contentWidth,T.isMobile&&S.addClass(M.lock)}function m(){if(T.visible&&!T.isMobile){var a=o();T.$controls.css({marginTop:(T.contentHeight-T.controlHeight-T.metaHeight)/2}),T.$lightbox.css({height:T.contentHeight+T.paddingVertical,width:T.contentWidth+T.paddingHorizontal,top:T.fixed?0:a.top})}}function n(){var a=o();T.$lightbox.css({top:T.fixed?0:a.top})}function o(){if(T.isMobile)return{left:0,top:0};var a={left:(b.windowWidth-T.contentWidth-T.paddingHorizontal)/2,top:T.top<=0?(b.windowHeight-T.contentHeight-T.paddingVertical)/2:T.top};return T.fixed!==!0&&(a.top+=Q.scrollTop()),a}function p(a){O.killEvent(a),T.captionOpen?q():(T.$lightbox.addClass(L.raw.caption_open).find(L.caption_toggle).text(T.labels.captionOpen),T.captionOpen=!0)}function q(){T.$lightbox.removeClass(L.raw.caption_open).find(L.caption_toggle).text(T.labels.captionClosed),T.captionOpen=!1}function r(){var a=this.attr("title"),b=a!==c&&a?a.replace(/^\s+|\s+$/g,""):!1;return b?'<p class="caption">'+b+"</p>":""}function s(b){T.$image=a("<img>"),T.$image.one(N.load,function(){var a=H(T.$image);T.naturalHeight=a.naturalHeight,T.naturalWidth=a.naturalWidth,T.retina&&(T.naturalHeight/=2,T.naturalWidth/=2),T.$content.prepend(T.$image),""===T.$caption.html()?T.$caption.hide():T.$caption.show(),t(),l()}).error(F).attr("src",b).addClass(L.raw.image),(T.$image[0].complete||4===T.$image[0].readyState)&&T.$image.trigger(N.load)}function t(){var a=0;for(T.windowHeight=T.viewportHeight=b.windowHeight-T.mobilePaddingVertical-T.paddingVertical,T.windowWidth=T.viewportWidth=b.windowWidth-T.mobilePaddingHorizontal-T.paddingHorizontal,T.contentHeight=1/0,T.contentWidth=1/0,T.imageMarginTop=0,T.imageMarginLeft=0;T.contentHeight>T.viewportHeight&&2>a;)T.imageHeight=0===a?T.naturalHeight:T.$image.outerHeight(),T.imageWidth=0===a?T.naturalWidth:T.$image.outerWidth(),T.metaHeight=0===a?0:T.metaHeight,T.spacerHeight=0===a?0:T.spacerHeight,0===a&&(T.ratioHorizontal=T.imageHeight/T.imageWidth,T.ratioVertical=T.imageWidth/T.imageHeight,T.isWide=T.imageWidth>T.imageHeight),T.imageHeight<T.minHeight&&(T.minHeight=T.imageHeight),T.imageWidth<T.minWidth&&(T.minWidth=T.imageWidth),T.isMobile?(T.isTouch?(T.$controlBox.css({width:b.windowWidth}),T.spacerHeight=T.$controls.outerHeight(!0)):(T.$tools.css({width:b.windowWidth}),T.spacerHeight=T.$tools.outerHeight(!0)),T.contentHeight=T.viewportHeight,T.contentWidth=T.viewportWidth,u(),T.imageMarginTop=(T.contentHeight-T.targetImageHeight-T.spacerHeight)/2,T.imageMarginLeft=(T.contentWidth-T.targetImageWidth)/2):(0===a&&(T.viewportHeight-=T.margin+T.paddingVertical,T.viewportWidth-=T.margin+T.paddingHorizontal),T.viewportHeight-=T.metaHeight,u(),T.contentHeight=T.targetImageHeight,T.contentWidth=T.targetImageWidth),T.isMobile||T.isTouch||T.$meta.css({width:T.contentWidth}),T.$image.css({height:T.targetImageHeight,width:T.targetImageWidth,marginTop:T.imageMarginTop,marginLeft:T.imageMarginLeft}),T.isMobile||(T.metaHeight=T.$meta.outerHeight(!0),T.contentHeight+=T.metaHeight),a++}function u(){var a=T.isMobile?T.contentHeight-T.spacerHeight:T.viewportHeight,b=T.isMobile?T.contentWidth:T.viewportWidth;T.isWide?(T.targetImageWidth=b,T.targetImageHeight=T.targetImageWidth*T.ratioHorizontal,T.targetImageHeight>a&&(T.targetImageHeight=a,T.targetImageWidth=T.targetImageHeight*T.ratioVertical)):(T.targetImageHeight=a,T.targetImageWidth=T.targetImageHeight*T.ratioVertical,T.targetImageWidth>b&&(T.targetImageWidth=b,T.targetImageHeight=T.targetImageWidth*T.ratioHorizontal)),(T.targetImageWidth>T.imageWidth||T.targetImageHeight>T.imageHeight)&&(T.targetImageHeight=T.imageHeight,T.targetImageWidth=T.imageWidth),(T.targetImageWidth<T.minWidth||T.targetImageHeight<T.minHeight)&&(T.targetImageWidth<T.minWidth?(T.targetImageWidth=T.minWidth,T.targetImageHeight=T.targetImageWidth*T.ratioHorizontal):(T.targetImageHeight=T.minHeight,T.targetImageWidth=T.targetImageHeight*T.ratioVertical))}function v(b){T.$videoWrapper=a('<div class="'+L.raw.videoWrapper+'"></div>'),T.$video=a('<iframe class="'+L.raw.video+'" seamless="seamless"></iframe>'),T.$video.attr("src",b).addClass(L.raw.video).prependTo(T.$videoWrapper),T.$content.prepend(T.$videoWrapper),w(),l()}function w(){T.windowHeight=T.viewportHeight=b.windowHeight-T.mobilePaddingVertical-T.paddingVertical,T.windowWidth=T.viewportWidth=b.windowWidth-T.mobilePaddingHorizontal-T.paddingHorizontal,T.videoMarginTop=0,T.videoMarginLeft=0,T.isMobile?(T.isTouch?(T.$controlBox.css({width:b.windowWidth}),T.spacerHeight=T.$controls.outerHeight(!0)):(T.$tools.css({width:b.windowWidth}),T.spacerHeight=T.$tools.outerHeight(!0)),T.viewportHeight-=T.spacerHeight,T.targetVideoWidth=T.viewportWidth,T.targetVideoHeight=T.targetVideoWidth*T.videoRatio,T.targetVideoHeight>T.viewportHeight&&(T.targetVideoHeight=T.viewportHeight,T.targetVideoWidth=T.targetVideoHeight/T.videoRatio),T.videoMarginTop=(T.viewportHeight-T.targetVideoHeight)/2,T.videoMarginLeft=(T.viewportWidth-T.targetVideoWidth)/2):(T.viewportHeight=T.windowHeight-T.margin,T.viewportWidth=T.windowWidth-T.margin,T.targetVideoWidth=T.videoWidth>T.viewportWidth?T.viewportWidth:T.videoWidth,T.targetVideoWidth<T.minWidth&&(T.targetVideoWidth=T.minWidth),T.targetVideoHeight=T.targetVideoWidth*T.videoRatio,T.contentHeight=T.targetVideoHeight,T.contentWidth=T.targetVideoWidth),T.isMobile||T.isTouch||T.$meta.css({width:T.contentWidth}),T.$videoWrapper.css({height:T.targetVideoHeight,width:T.targetVideoWidth,marginTop:T.videoMarginTop,marginLeft:T.videoMarginLeft}),T.isMobile||(T.metaHeight=T.$meta.outerHeight(!0),T.contentHeight=T.targetVideoHeight+T.metaHeight)}function x(){var b="";T.gallery.index>0&&(b=T.gallery.$items.eq(T.gallery.index-1).attr("href"),b.indexOf("youtube.com/embed")<0&&b.indexOf("player.vimeo.com/video")<0&&a('<img src="'+b+'">')),T.gallery.index<T.gallery.total&&(b=T.gallery.$items.eq(T.gallery.index+1).attr("href"),b.indexOf("youtube.com/embed")<0&&b.indexOf("player.vimeo.com/video")<0&&a('<img src="'+b+'">'))}function y(b){O.killEvent(b);var c=a(b.currentTarget);T.isAnimating||c.hasClass(L.raw.control_disabled)||(T.isAnimating=!0,q(),T.gallery.index+=c.hasClass(L.raw.control_next)?1:-1,T.gallery.index>T.gallery.total&&(T.gallery.index=T.infinite?0:T.gallery.total),T.gallery.index<0&&(T.gallery.index=T.infinite?T.gallery.total:0),T.$lightbox.addClass([L.raw.loading,L.raw.animating].join(" ")),T.$container.transition({property:"opacity"},function(){"undefined"!=typeof T.$image&&T.$image.remove(),"undefined"!=typeof T.$videoWrapper&&T.$videoWrapper.remove(),T.$el=T.gallery.$items.eq(T.gallery.index),T.$caption.html(T.formatter.call(T.$el,T)),T.$position.find(L.position_current).html(T.gallery.index+1);var a=T.$el.attr("href"),b=a.indexOf("youtube.com/embed")>-1||a.indexOf("player.vimeo.com/video")>-1;b?v(a):s(a),z()}))}function z(){T.$controls.removeClass(L.raw.control_disabled),T.infinite||(0===T.gallery.index&&T.$controls.filter(L.control_previous).addClass(M.control_disabled),T.gallery.index===T.gallery.total&&T.$controls.filter(L.control_next).addClass(M.control_disabled))}function A(a){!T.gallery.active||37!==a.keyCode&&39!==a.keyCode?27===a.keyCode&&T.$close.trigger(N.click):(O.killEvent(a),T.$controls.filter(37===a.keyCode?L.control_previous:L.control_next).trigger(N.click))}function B(b){var c=a(b).find("> :first-child").clone();D(c)}function C(b){b+=b.indexOf("?")>-1?"&"+T.requestKey+"=true":"?"+T.requestKey+"=true";var c=a('<iframe class="'+L.raw.iframe+'" src="'+b+'"></iframe>');D(c)}function D(a){T.$content.append(a),E(a),l()}function E(a){T.windowHeight=b.windowHeight-T.mobilePaddingVertical-T.paddingVertical,T.windowWidth=b.windowWidth-T.mobilePaddingHorizontal-T.paddingHorizontal,T.objectHeight=a.outerHeight(!0),T.objectWidth=a.outerWidth(!0),T.targetHeight=T.targetHeight||(T.$el?T.$el.data(J+"-height"):null),T.targetWidth=T.targetWidth||(T.$el?T.$el.data(J+"-width"):null),T.maxHeight=T.windowHeight<0?T.minHeight:T.windowHeight,T.isIframe=a.is("iframe"),T.objectMarginTop=0,T.objectMarginLeft=0,T.isMobile||(T.windowHeight-=T.margin,T.windowWidth-=T.margin),T.contentHeight=T.targetHeight?T.targetHeight:T.isIframe||T.isMobile?T.windowHeight:T.objectHeight,T.contentWidth=T.targetWidth?T.targetWidth:T.isIframe||T.isMobile?T.windowWidth:T.objectWidth,(T.isIframe||T.isObject)&&T.isMobile?(T.contentHeight=T.windowHeight,T.contentWidth=T.windowWidth):T.isObject&&(T.contentHeight=T.contentHeight>T.windowHeight?T.windowHeight:T.contentHeight,T.contentWidth=T.contentWidth>T.windowWidth?T.windowWidth:T.contentWidth)}function F(){var b=a('<div class="'+L.raw.error+'"><p>Error Loading Resource</p></div>');T.type="element",T.$tools.remove(),T.$image.off(N.namespace),D(b)}function G(a){T.captionOpen||T.$controls.filter("left"===a.directionX?L.control_next:L.control_previous).trigger(N.click)}function H(a){var b=a[0],c=new Image;return"undefined"!=typeof b.naturalHeight?{naturalHeight:b.naturalHeight,naturalWidth:b.naturalWidth}:"img"===b.tagName.toLowerCase()?(c.src=b.src,{naturalHeight:c.height,naturalWidth:c.width}):!1}var I=b.Plugin("lightbox",{widget:!0,defaults:{customClass:"",extensions:["jpg","sjpg","jpeg","png","gif"],fixed:!1,formatter:r,infinite:!1,labels:{close:"Close",count:"of",next:"Next",previous:"Previous",captionClosed:"View Caption",captionOpen:"Close Caption"},margin:50,minHeight:100,minWidth:100,mobile:!1,retina:!1,requestKey:"fs-lightbox",top:0,videoRatio:.5625,videoWidth:800},classes:["loading","animating","fixed","mobile","touch","inline","iframed","open","overlay","close","loading_icon","container","content","image","video","video_wrapper","tools","meta","controls","control","control_previous","control_next","control_disabled","position","position_current","position_total","caption_toggle","caption","caption_open","iframe","error","lock"],events:{open:"open",close:"close",swipe:"swipe"},methods:{_setup:d,_construct:f,_destruct:g,_resize:e,resize:j},utilities:{_initialize:h,close:k}}),J=I.namespace,K=I.defaults,L=I.classes,M=L.raw,N=I.events,O=I.functions,P=b.window,Q=b.$window,R=null,S=null,T=null}(jQuery,Formstone);
/*! formstone v0.5.3 [tooltip.js] 2015-04-17 | MIT License | formstone.it */

!function(a,b){"use strict";function c(a){this.on(o.mouseEnter,a,e)}function d(){j(),this.off(o.namespace)}function e(a){j();var b=a.data;b.left=a.pageX,b.top=a.pageY,h(b)}function f(a){var b=a.data;p.clearTimer(b.timer),j()}function g(a){i(a.pageX,a.pageY)}function h(c){j();var d="";d+='<div class="',d+=[n.base,n[c.direction]].join(" "),d+='">',d+='<div class="'+n.content+'">',d+=c.formatter.call(c.$el,c),d+='<span class="'+n.caret+'"></span>',d+="</div>",d+="</div>",q={$tooltip:a(d),$el:c.$el},b.$body.append(q.$tooltip);var e=q.$tooltip.find(m.content),h=q.$tooltip.find(m.caret),k=c.$el.offset(),l=c.$el.outerHeight(),r=c.$el.outerWidth(),s=0,t=0,u=0,v=0,w=!1,x=!1,y=h.outerHeight(!0),z=h.outerWidth(!0),A=e.outerHeight(!0),B=e.outerWidth(!0);"right"===c.direction||"left"===c.direction?(x=(A-y)/2,v=-A/2,"right"===c.direction?u=c.margin:"left"===c.direction&&(u=-(B+c.margin))):(w=(B-z)/2,u=-B/2,"bottom"===c.direction?v=c.margin:"top"===c.direction&&(v=-(A+c.margin))),e.css({top:v,left:u}),h.css({top:x,left:w}),c.follow?c.$el.on(o.mouseMove,c,g):(c.match?"right"===c.direction||"left"===c.direction?(t=c.top,"right"===c.direction?s=k.left+r:"left"===c.direction&&(s=k.left)):(s=c.left,"bottom"===c.direction?t=k.top+l:"top"===c.direction&&(t=k.top)):"right"===c.direction||"left"===c.direction?(t=k.top+l/2,"right"===c.direction?s=k.left+r:"left"===c.direction&&(s=k.left)):(s=k.left+r/2,"bottom"===c.direction?t=k.top+l:"top"===c.direction&&(t=k.top)),i(s,t)),c.timer=p.startTimer(c.timer,c.delay,function(){q.$tooltip.addClass(n.visible)}),c.$el.one(o.mouseLeave,c,f)}function i(a,b){q&&q.$tooltip.css({left:a,top:b})}function j(){q&&(q.$el.off([o.mouseMove,o.mouseLeave].join(" ")),q.$tooltip.remove(),q=null)}function k(){return this.data("title")}var l=b.Plugin("tooltip",{widget:!0,defaults:{delay:0,direction:"top",follow:!1,formatter:k,margin:15,match:!1},classes:["content","caret","visible","top","bottom","right","left"],methods:{_construct:c,_destruct:d}}),m=l.classes,n=m.raw,o=l.events,p=l.functions,q=null}(jQuery,Formstone);
/*
 * Naver v3.1.2 - 2014-11-25
 * A jQuery plugin for responsive navigation. Part of the Formstone Library.
 * http://formstone.it/naver/
 *
 * Copyright 2014 Ben Plum; MIT Licensed
 */

;(function ($, window) {
	"use strict";

	/**
	 * @options
	 * @param customClass [string] <''> "Class applied to instance"
	 * @param label [boolean] <true> "Display handle width label"
	 * @param labels.closed [string] <'Navigation'> "Closed state text"
	 * @param labels.open [string] <'Close'> "Open state text"
	 * @param maxWidth [string] <'980px'> "Width at which to auto-disable plugin"
	 */
	var options = {
		customClass: "",
		label: true,
		labels: {
			closed: "Page Navigation",
			open: "Close"
		},
		maxWidth: "767px"
	};

	/**
	 * @events
	 * @event open.naver "Navigation opened"
	 * @event close.naver "Navigation closed"
	 */

	var pub = {

		/**
		 * @method
		 * @name close
		 * @description Closes instance
		 * @example $(".target").naver("close");
		 */
		close: function(e) {
			return $(this).each(function(i, nav) {
				var data = $(nav).data("naver");

				if (data && data.$nav.hasClass("enabled")) {
					data.$wrapper.css({
						height: 0
					});
					if (data.label) {
						data.$handle.html(data.labels.closed);
					}
					data.$nav.removeClass("open")
							 .trigger("close.naver");
				}
			});
		},

		/**
		 * @method
		 * @name defaults
		 * @description Sets default plugin options
		 * @param opts [object] <{}> "Options object"
		 * @example $.naver("defaults", opts);
		 */
		defaults: function(opts) {
			options = $.extend(true, options, opts || {});
			return (typeof this === 'object') ? $(this) : true;
		},

		/**
		 * @method
		 * @name disable
		 * @description Disables instance
		 * @example $(".target").naver("disable");
		 */
		disable: function() {
			return $(this).each(function(i, nav) {
				var data = $(nav).data("naver");

				if (data) {
					data.$nav.removeClass("enabled");
					data.$wrapper.css({ height: "" });
				}
			});
		},

		/**
		 * @method
		 * @name destroy
		 * @description Destroys instance
		 * @example $(".target").naver("destroy");
		 */
		destroy: function() {
			return $(this).each(function(i, nav) {
				var data = $(nav).data("naver");

				if (data) {
					data.$handle.remove();
					data.$container.contents()
								   .unwrap()
								   .unwrap();

					data.$nav.removeClass("enabled disabled naver " + data.customClass)
							 .off(".naver")
							 .removeData("naver");
				}
			});
		},

		/**
		 * @method
		 * @name enable
		 * @description Enables instance
		 * @example $(".target").naver("enable");
		 */
		enable: function() {
			return $(this).each(function(i, nav) {
				var data = $(nav).data("naver");

				if (data) {
					data.$nav.addClass("enabled");
					pub.close.apply(data.$nav);
				}
			});
		},

		/**
		 * @method
		 * @name open
		 * @description Opens instance
		 * @example $(".target").naver("open");
		 */
		open: function() {
			return $(this).each(function(i, nav) {
				var data = $(nav).data("naver");

				if (data && data.$nav.hasClass("enabled")) {
					data.$wrapper.css({
						height: data.$container.outerHeight(true)
					});
					if (data.label) {
						data.$handle.html(data.labels.open);
					}
					data.$nav.addClass("open")
							 .trigger("open.naver");
				}
			});
		}
	};

	/**
	 * @method private
	 * @name _init
	 * @description Initializes plugin
	 * @param opts [object] "Initialization options"
	 */
	function _init(opts) {
		// Settings
		opts = $.extend(true, {}, options, opts);

		// Apply to each element
		var $items = $(this);
		for (var i = 0, count = $items.length; i < count; i++) {
			_build($items.eq(i), opts);
		}
		return $items;
	}

	/**
	 * @method private
	 * @name _build
	 * @description Builds each instance
	 * @param $nav [jQuery object] "Target jQuery object"
	 * @param opts [object] <{}> "Options object"
	 */
	function _build($nav, opts) {
		if (!$nav.data("naver")) {
			// Extend Options
			opts = $.extend(true, {}, opts, $nav.data("naver-options"));

			var $handle = $nav.find(".naver-handle").length ? $nav.find(".naver-handle").detach() : $('<span class="naver-handle"></span>');

			$nav.addClass("naver " + opts.customClass)
				.wrapInner('<div class="naver-container"></div>')
				.wrapInner('<div class="naver-wrapper"></div>')
				.prepend($handle);

			var data = $.extend(true, {
				$nav: $nav,
				$container: $nav.find(".naver-container"),
				$wrapper: $nav.find(".naver-wrapper"),
				$handle: $nav.find(".naver-handle")
			}, opts);

			data.$handle.text((opts.label) ? opts.labels.closed : '');
			data.$nav.on("touchstart.naver", ".naver-handle", data, _onTouchStart)
					 .on("click.naver", ".naver-handle", data, _onClick)
					 .data("naver", data);


			// Navtive MQ Support
			if (window.matchMedia !== undefined) {
				data.mediaQuery = window.matchMedia("(max-width:" + (data.maxWidth === Infinity ? "100000px" : data.maxWidth) + ")");
				// Make sure we stay in context
				data.mediaQuery.addListener(function() {
					_onRespond.apply(data.$nav);
				});
				_onRespond.apply(data.$nav);
			}
		}
	}

	/**
	 * @method private
	 * @name _onTouchStart
	 * @description Handles touchstart to selected item
	 * @param e [object] "Event data"
	 */
	function _onTouchStart(e) {
		e.stopPropagation();

		var data = e.data;

		data.touchStartEvent = e.originalEvent;

		data.touchStartX = data.touchStartEvent.touches[0].clientX;
		data.touchStartY = data.touchStartEvent.touches[0].clientY;

		data.$nav.on("touchmove.naver", ".naver-handle", data, _onTouchMove)
				 .on("touchend.naver", ".naver-handle", data, _onTouchEnd);
	}

	/**
	 * @method private
	 * @name _onTouchMove
	 * @description Handles touchmove to selected item
	 * @param e [object] "Event data"
	 */
	function _onTouchMove(e) {
		var data = e.data,
			oe = e.originalEvent;

		if (Math.abs(oe.touches[0].clientX - data.touchStartX) > 10 || Math.abs(oe.touches[0].clientY - data.touchStartY) > 10) {
			data.$nav.off("touchmove.naver touchend.naver");
		}
	}

	/**
	 * @method private
	 * @name _onTouchEnd
	 * @description Handles touchend to selected item
	 * @param e [object] "Event data"
	 */
	function _onTouchEnd(e) {
		e.preventDefault();
		e.stopPropagation();

		var data = e.data;

		data.touchStartEvent.preventDefault();

		data.$nav.off("touchmove.naver touchend.naver click.naver");

		_onClick(e);
	}

	/**
	 * @method private
	 * @name _onClick
	 * @description Handles click nav click
	 * @param e [object] "Event data"
	 */
	function _onClick(e) {
		e.preventDefault();
		e.stopPropagation();

		var $target = $(e.currentTarget),
			data = e.data;

		// Close other open instances
		$(".naver").not(data.$nav)
				   .naver("close");

		if (data.$nav.hasClass("open")) {
			pub.close.apply(data.$nav);
		} else {
			pub.open.apply(data.$nav);
		}
	}

	/**
	 * @method private
	 * @name _onRespond
	 * @description Handles media query match change
	 */
	function _onRespond() {
		var data = $(this).data("naver");

		if (data.mediaQuery.matches) {
			pub.enable.apply(data.$nav);
		} else {
			pub.disable.apply(data.$nav);
		}
	}

	$.fn.naver = function(method) {
		if (pub[method]) {
			return pub[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return _init.apply(this, arguments);
		}
		return this;
	};

	$.naver = function(method) {
		if (method === "defaults") {
			pub.defaults.apply(this, Array.prototype.slice.call(arguments, 1));
		}
	};
})(jQuery, window);
/* 
 * Shifter v3.1.2 - 2014-10-28 
 * A jQuery plugin for simple slide-out mobile navigation. Part of the Formstone Library. 
 * http://formstone.it/shifter/ 
 * 
 * Copyright 2014 Ben Plum; MIT Licensed 
 */

;(function ($, window) {
	"use strict";

	var namespace = "shifter",
		initialized = false,
		hasTouched = false,
		data = {},
		classes = {
			handle: "shifter-handle",
			page: "shifter-page",
			header: "shifter-header",
			navigation: "shifter-navigation",
			isEnabled: "shifter-enabled",
			isOpen: "shifter-open"
		},
		events = {
			click: "touchstart." + namespace + " click." + namespace
		};

	/**
	 * @options
	 * @param maxWidth [string] <'980px'> "Width at which to auto-disable plugin"
	 */
	var options = {
		maxWidth: "980px"
	};

	var pub = {

		/**
		 * @method
		 * @name close
		 * @description Closes navigation if open
		 * @example $.shifter("close");
		 */
		close: function() {
			if (initialized) {
				data.$html.removeClass(classes.isOpen);
				data.$body.removeClass(classes.isOpen);
				data.$shifts.off( classify(namespace) );
				// Close mobile keyboard if open
				data.$nav.find("input").trigger("blur");
			}
		},

		/**
		 * @method
		 * @name enable
		 * @description Enables navigation system
		 * @example $.shifter("enable");
		 */
		enable: function() {
			if (initialized) {
				data.$body.addClass(classes.isEnabled);
			}
		},

		/**
		 * @method
		 * @name destroy
		 * @description Removes instance of plugin
		 * @example $.shifter("destroy");
		 */
		destroy: function() {
			if (initialized) {
				data.$html.removeClass(classes.isOpen);
				data.$body.removeClass( [classes.isEnabled, classes.isOpen].join(" ") )
					      .off(events.click);

				// Navtive MQ Support
				if (window.matchMedia !== undefined) {
					data.mediaQuery.removeListener(onRespond);
				}

				data = {};
				initialized = false;
			}
		},

		/**
		 * @method
		 * @name disable
		 * @description Disables navigation system
		 * @example $.shifter("disable");
		 */
		disable: function() {
			if (initialized) {
				pub.close();
				data.$body.removeClass(classes.isEnabled);
			}
		},

		/**
		 * @method
		 * @name open
		 * @description Opens navigation if closed
		 * @example $.shifter("open");
		 */
		open: function() {
			if (initialized) {
				data.$html.addClass(classes.isOpen);
				data.$body.addClass(classes.isOpen);
				data.$shifts.one(events.click, onClick);
			}
		}
	};

	/**
	 * @method private
	 * @name init
	 * @description Initializes plugin
	 * @param opts [object] "Initialization options"
	 */
	function init(opts) {
		if (!initialized) {
			data = $.extend({}, options, opts || {});

			data.$html = $("html");
			data.$body = $("body");
			data.$shifts = $( [classify(classes.page), classify(classes.header)].join(", ") );
			data.$nav = $( classify(classes.navigation) );

			if (data.$shifts.length > 0 && data.$nav.length > 0) {
				initialized = true;

				data.$body.on(events.click, classify(classes.handle), onClick);

				// Navtive MQ Support
				if (window.matchMedia !== undefined) {
					data.mediaQuery = window.matchMedia("(max-width:" + (data.maxWidth === Infinity ? "100000px" : data.maxWidth) + ")");
					data.mediaQuery.addListener(onRespond);
					onRespond();
				}
			}
		}
	}

	/**
	 * @method private
	 * @name onRespond
	 * @description Handles media query match change
	 */
	function onRespond() {
		if (data.mediaQuery.matches) {
			pub.enable();
		} else {
			pub.disable();
		}
	}

	/**
	 * @method private
	 * @name onClick
	 * @description Determines proper click / touch action
	 * @param e [object] "Event data"
	 */
	function onClick(e) {
		e.preventDefault();
		e.stopPropagation();

		if (!hasTouched) {
			if (data.$body.hasClass(classes.isOpen)) {
				pub.close();
			} else {
				pub.open();
			}
		}

		if (e.type === "touchstart") {
			hasTouched = true;

			setTimeout(resetTouch, 500);
		}
	}

	/**
	 * @method private
	 * @name resetTouch
	 * @description Resets touch state
	 */
	function resetTouch() {
		hasTouched = false;
	}

	/**
	 * @method private
	 * @name classify
	 * @description Create class selector from text
	 * @param text [string] "Text to convert"
	 * @return [string] "New class name"
	 */
	function classify(text) {
		return "." + text;
	}

	$[namespace] = function(method) {
		if (pub[method]) {
			return pub[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return init.apply(this, arguments);
		}
		return this;
	};
})(jQuery, window);
$(document).ready(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');

	// Shifter
	$.shifter({
		maxWidth: "767px"
	});

	// Naver
	$(".naver").naver();

	// POPUP WINDOW FOR SOCIAL MEDIA
	function windowPopup(url, width, height) {
		// Calculate the position of the popup so
		// it’s centered on the screen.
		var left = (screen.width / 2) - (width / 2),
			top = (screen.height / 2) - (height / 2);

		window.open(
			url,
			"",
			"menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=" + width + ",height=" + height + ",top=" + top + ",left=" + left
		);
	}

	// Lightbox
	$(".lightbox").lightbox({
		mobile: true
	});

	// Tooltip
	$(".tooltip").tooltip({
		direction: "top"
	});

	//jQuery
	$(".js-social-share").on("click", function(e) {
		e.preventDefault();
		windowPopup($(this).attr("href"), 500, 300);
	});

	// Vanilla JavaScript
	var jsSocialShares = document.querySelectorAll(".js-social-share");
	if (jsSocialShares) {
		[].forEach.call(jsSocialShares, function(anchor) {
		anchor.addEventListener("click", function(e) {
			e.preventDefault();
			windowPopup(this.href, 500, 300);
		 });
	  });
	}
	// END POPUP WINDOW FOR SOCIAL MEDIA

});
