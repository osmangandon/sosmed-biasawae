jQuery(document).ready(function($)
{$('.wp_syntax').bind({mouseover:function()
{var w=$(this).find('table').outerWidth();var hw=$(document).width()-$(this).offset().left-20;if(w>$(this).outerWidth()){$(this).css({'position':'relative','z-index':'9999','width':(w>hw?hw:w)+'px'})}},mouseout:function()
{$(this).css({'position':'relative','z-index':'','width':'auto'})},dblclick:function()
{var jthis=$(this);if(!jthis.data('hasTextArea')){var code=jthis.find(".theCode").html();var ta=$('<textarea spellcheck="false"/>');ta.html(code);var pre=jthis.find('.code > pre');ta.css({'font-family':pre.css('font-family'),'font-size':pre.css('font-size'),'line-height':pre.css('line-height'),'height':"100%",'width':"100%",'position':'absolute','top':0,'left':0,'margin':pre.css('margin'),'padding':pre.css('padding'),'border':'0px'});ta.css('resize','none');ta.css('outline','none');ta.focusout(function(){ta.remove();jthis.data('hasTextArea',!1)});var line_numbers=jthis.find(".line_numbers");if(line_numbers.length!=0){var w=line_numbers.outerWidth();ta.css('left',w+"px");ta.css('width',jthis.width()-w+"px")}
var caption=jthis.find('caption');if(caption.length!=0){var h=caption.outerHeight();ta.css('top',h+"px");ta.css('height',jthis.height()-h+"px")}
ta.appendTo(jthis);ta.select();ta.focus();jthis.data('hasTextArea',!0)}}})});var addComment={moveForm:function(a,b,c,d){var e,f,g,h,i=this,j=i.I(a),k=i.I(c),l=i.I("cancel-comment-reply-link"),m=i.I("comment_parent"),n=i.I("comment_post_ID"),o=k.getElementsByTagName("form")[0];if(j&&k&&l&&m&&o){i.respondId=c,d=d||!1,i.I("wp-temp-form-div")||(e=document.createElement("div"),e.id="wp-temp-form-div",e.style.display="none",k.parentNode.insertBefore(e,k)),j.parentNode.insertBefore(k,j.nextSibling),n&&d&&(n.value=d),m.value=b,l.style.display="",l.onclick=function(){var a=addComment,b=a.I("wp-temp-form-div"),c=a.I(a.respondId);if(b&&c)return a.I("comment_parent").value="0",b.parentNode.insertBefore(c,b),b.parentNode.removeChild(b),this.style.display="none",this.onclick=null,!1};try{for(var p=0;p<o.elements.length;p++)if(f=o.elements[p],h=!1,"getComputedStyle"in window?g=window.getComputedStyle(f):document.documentElement.currentStyle&&(g=f.currentStyle),(f.offsetWidth<=0&&f.offsetHeight<=0||"hidden"===g.visibility)&&(h=!0),"hidden"!==f.type&&!f.disabled&&!h){f.focus();break}}catch(q){}return!1}},I:function(a){return document.getElementById(a)}};(function($){$(document).ready(function(){var user_agent=navigator.userAgent;var is_opera_edge;var browser=user_agent.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))/i)||[];var browser_name='';var browser_class='';if(/trident/i.test(browser[0])){browser_name='ie'}else if(browser[0]==='Chrome'){is_opera_edge=user_agent.match(/\b(OPR|Edge)/);if(is_opera_edge!==null){browser_name=is_opera_edge[0].replace('OPR','opera')}}
if(''===browser_name){browser_name=''!==browser[0]?browser[0]:navigator.appName}
browser_name=browser_name.toLowerCase();switch(browser_name){case 'msie':browser_class='ie';break;case 'firefox':browser_class='gecko';break;default:browser_class=browser_name;break}
if(user_agent.match(/iPhone/)){browser_class+=' iphone'}
$('body').addClass(browser_class)})})(jQuery);!function(a,b){"use strict";function c(){if(!e){e=!0;var a,c,d,f,g=-1!==navigator.appVersion.indexOf("MSIE 10"),h=!!navigator.userAgent.match(/Trident.*rv:11\./),i=b.querySelectorAll("iframe.wp-embedded-content");for(c=0;c<i.length;c++){if(d=i[c],!d.getAttribute("data-secret"))f=Math.random().toString(36).substr(2,10),d.src+="#?secret="+f,d.setAttribute("data-secret",f);if(g||h)a=d.cloneNode(!0),a.removeAttribute("security"),d.parentNode.replaceChild(a,d)}}}var d=!1,e=!1;if(b.querySelector)if(a.addEventListener)d=!0;if(a.wp=a.wp||{},!a.wp.receiveEmbedMessage)if(a.wp.receiveEmbedMessage=function(c){var d=c.data;if(d.secret||d.message||d.value)if(!/[^a-zA-Z0-9]/.test(d.secret)){var e,f,g,h,i,j=b.querySelectorAll('iframe[data-secret="'+d.secret+'"]'),k=b.querySelectorAll('blockquote[data-secret="'+d.secret+'"]');for(e=0;e<k.length;e++)k[e].style.display="none";for(e=0;e<j.length;e++)if(f=j[e],c.source===f.contentWindow){if(f.removeAttribute("style"),"height"===d.message){if(g=parseInt(d.value,10),g>1e3)g=1e3;else if(~~g<200)g=200;f.height=g}if("link"===d.message)if(h=b.createElement("a"),i=b.createElement("a"),h.href=f.getAttribute("src"),i.href=d.value,i.host===h.host)if(b.activeElement===f)a.top.location.href=d.value}}},d)a.addEventListener("message",a.wp.receiveEmbedMessage,!1),b.addEventListener("DOMContentLoaded",c,!1),a.addEventListener("load",c,!1)}(window,document);var ak_js=document.getElementById("ak_js");if(!ak_js){ak_js=document.createElement('input');ak_js.setAttribute('id','ak_js');ak_js.setAttribute('name','ak_js');ak_js.setAttribute('type','hidden')}
else{ak_js.parentNode.removeChild(ak_js)}
ak_js.setAttribute('value',(new Date()).getTime());var commentForm=document.getElementById('commentform');if(commentForm){commentForm.appendChild(ak_js)}
else{var replyRowContainer=document.getElementById('replyrow');if(replyRowContainer){var children=replyRowContainer.getElementsByTagName('td');if(children.length>0){children[0].appendChild(ak_js)}}};(function(e,t){"use strict";function n(e){var t=Array.prototype.slice.call(arguments,1);return e.prop?e.prop.apply(e,t):e.attr.apply(e,t)}function s(e,t,n){var s,a;for(s in n)n.hasOwnProperty(s)&&(a=s.replace(/ |$/g,t.eventNamespace),e.bind(a,n[s]))}function a(e,t,n){s(e,n,{focus:function(){t.addClass(n.focusClass)},blur:function(){t.removeClass(n.focusClass),t.removeClass(n.activeClass)},mouseenter:function(){t.addClass(n.hoverClass)},mouseleave:function(){t.removeClass(n.hoverClass),t.removeClass(n.activeClass)},"mousedown touchbegin":function(){e.is(":disabled")||t.addClass(n.activeClass)},"mouseup touchend":function(){t.removeClass(n.activeClass)}})}function i(e,t){e.removeClass(t.hoverClass+" "+t.focusClass+" "+t.activeClass)}function r(e,t,n){n?e.addClass(t):e.removeClass(t)}function l(e,t,n){var s="checked",a=t.is(":"+s);t.prop?t.prop(s,a):a?t.attr(s,s):t.removeAttr(s),r(e,n.checkedClass,a)}function u(e,t,n){r(e,n.disabledClass,t.is(":disabled"))}function o(e,t,n){switch(n){case"after":return e.after(t),e.next();case"before":return e.before(t),e.prev();case"wrap":return e.wrap(t),e.parent()}return null}function c(t,s,a){var i,r,l;return a||(a={}),a=e.extend({bind:{},divClass:null,divWrap:"wrap",spanClass:null,spanHtml:null,spanWrap:"wrap"},a),i=e("<div />"),r=e("<span />"),s.autoHide&&t.is(":hidden")&&"none"===t.css("display")&&i.hide(),a.divClass&&i.addClass(a.divClass),s.wrapperClass&&i.addClass(s.wrapperClass),a.spanClass&&r.addClass(a.spanClass),l=n(t,"id"),s.useID&&l&&n(i,"id",s.idPrefix+"-"+l),a.spanHtml&&r.html(a.spanHtml),i=o(t,i,a.divWrap),r=o(t,r,a.spanWrap),u(i,t,s),{div:i,span:r}}function d(t,n){var s;return n.wrapperClass?(s=e("<span />").addClass(n.wrapperClass),s=o(t,s,"wrap")):null}function f(){var t,n,s,a;return a="rgb(120,2,153)",n=e('<div style="width:0;height:0;color:'+a+'">'),e("body").append(n),s=n.get(0),t=window.getComputedStyle?window.getComputedStyle(s,"").color:(s.currentStyle||s.style||{}).color,n.remove(),t.replace(/ /g,"")!==a}function p(t){return t?e("<span />").text(t).html():""}function m(){return navigator.cpuClass&&!navigator.product}function v(){return window.XMLHttpRequest!==void 0?!0:!1}function h(e){var t;return e[0].multiple?!0:(t=n(e,"size"),!t||1>=t?!1:!0)}function C(){return!1}function w(e,t){var n="none";s(e,t,{"selectstart dragstart mousedown":C}),e.css({MozUserSelect:n,msUserSelect:n,webkitUserSelect:n,userSelect:n})}function b(e,t,n){var s=e.val();""===s?s=n.fileDefaultHtml:(s=s.split(/[\/\\]+/),s=s[s.length-1]),t.text(s)}function y(e,t,n){var s,a;for(s=[],e.each(function(){var e;for(e in t)Object.prototype.hasOwnProperty.call(t,e)&&(s.push({el:this,name:e,old:this.style[e]}),this.style[e]=t[e])}),n();s.length;)a=s.pop(),a.el.style[a.name]=a.old}function g(e,t){var n;n=e.parents(),n.push(e[0]),n=n.not(":visible"),y(n,{visibility:"hidden",display:"block",position:"absolute"},t)}function k(e,t){return function(){e.unwrap().unwrap().unbind(t.eventNamespace)}}var H=!0,x=!1,A=[{match:function(e){return e.is("a, button, :submit, :reset, input[type='button']")},apply:function(e,t){var r,l,o,d,f;return l=t.submitDefaultHtml,e.is(":reset")&&(l=t.resetDefaultHtml),d=e.is("a, button")?function(){return e.html()||l}:function(){return p(n(e,"value"))||l},o=c(e,t,{divClass:t.buttonClass,spanHtml:d()}),r=o.div,a(e,r,t),f=!1,s(r,t,{"click touchend":function(){var t,s,a,i;f||e.is(":disabled")||(f=!0,e[0].dispatchEvent?(t=document.createEvent("MouseEvents"),t.initEvent("click",!0,!0),s=e[0].dispatchEvent(t),e.is("a")&&s&&(a=n(e,"target"),i=n(e,"href"),a&&"_self"!==a?window.open(i,a):document.location.href=i)):e.click(),f=!1)}}),w(r,t),{remove:function(){return r.after(e),r.remove(),e.unbind(t.eventNamespace),e},update:function(){i(r,t),u(r,e,t),e.detach(),o.span.html(d()).append(e)}}}},{match:function(e){return e.is(":checkbox")},apply:function(e,t){var n,r,o;return n=c(e,t,{divClass:t.checkboxClass}),r=n.div,o=n.span,a(e,r,t),s(e,t,{"click touchend":function(){l(o,e,t)}}),l(o,e,t),{remove:k(e,t),update:function(){i(r,t),o.removeClass(t.checkedClass),l(o,e,t),u(r,e,t)}}}},{match:function(e){return e.is(":file")},apply:function(t,r){function l(){b(t,p,r)}var d,f,p,v;return d=c(t,r,{divClass:r.fileClass,spanClass:r.fileButtonClass,spanHtml:r.fileButtonHtml,spanWrap:"after"}),f=d.div,v=d.span,p=e("<span />").html(r.fileDefaultHtml),p.addClass(r.filenameClass),p=o(t,p,"after"),n(t,"size")||n(t,"size",f.width()/10),a(t,f,r),l(),m()?s(t,r,{click:function(){t.trigger("change"),setTimeout(l,0)}}):s(t,r,{change:l}),w(p,r),w(v,r),{remove:function(){return p.remove(),v.remove(),t.unwrap().unbind(r.eventNamespace)},update:function(){i(f,r),b(t,p,r),u(f,t,r)}}}},{match:function(e){if(e.is("input")){var t=(" "+n(e,"type")+" ").toLowerCase(),s=" color date datetime datetime-local email month number password search tel text time url week ";return s.indexOf(t)>=0}return!1},apply:function(e,t){var s,i;return s=n(e,"type"),e.addClass(t.inputClass),i=d(e,t),a(e,e,t),t.inputAddTypeAsClass&&e.addClass(s),{remove:function(){e.removeClass(t.inputClass),t.inputAddTypeAsClass&&e.removeClass(s),i&&e.unwrap()},update:C}}},{match:function(e){return e.is(":radio")},apply:function(t,r){var o,d,f;return o=c(t,r,{divClass:r.radioClass}),d=o.div,f=o.span,a(t,d,r),s(t,r,{"click touchend":function(){e.uniform.update(e(':radio[name="'+n(t,"name")+'"]'))}}),l(f,t,r),{remove:k(t,r),update:function(){i(d,r),l(f,t,r),u(d,t,r)}}}},{match:function(e){return e.is("select")&&!h(e)?!0:!1},apply:function(t,n){var r,l,o,d;return n.selectAutoWidth&&g(t,function(){d=t.width()}),r=c(t,n,{divClass:n.selectClass,spanHtml:(t.find(":selected:first")||t.find("option:first")).html(),spanWrap:"before"}),l=r.div,o=r.span,n.selectAutoWidth?g(t,function(){y(e([o[0],l[0]]),{display:"block"},function(){var e;e=o.outerWidth()-o.width(),l.width(d+e),o.width(d)})}):l.addClass("fixedWidth"),a(t,l,n),s(t,n,{change:function(){o.html(t.find(":selected").html()),l.removeClass(n.activeClass)},"click touchend":function(){var e=t.find(":selected").html();o.html()!==e&&t.trigger("change")},keyup:function(){o.html(t.find(":selected").html())}}),w(o,n),{remove:function(){return o.remove(),t.unwrap().unbind(n.eventNamespace),t},update:function(){n.selectAutoWidth?(e.uniform.restore(t),t.uniform(n)):(i(l,n),o.html(t.find(":selected").html()),u(l,t,n))}}}},{match:function(e){return e.is("select")&&h(e)?!0:!1},apply:function(e,t){var n;return e.addClass(t.selectMultiClass),n=d(e,t),a(e,e,t),{remove:function(){e.removeClass(t.selectMultiClass),n&&e.unwrap()},update:C}}},{match:function(e){return e.is("textarea")},apply:function(e,t){var n;return e.addClass(t.textareaClass),n=d(e,t),a(e,e,t),{remove:function(){e.removeClass(t.textareaClass),n&&e.unwrap()},update:C}}}];m()&&!v()&&(H=!1),e.uniform={defaults:{activeClass:"active",autoHide:!0,buttonClass:"button",checkboxClass:"checker",checkedClass:"checked",disabledClass:"disabled",eventNamespace:".uniform",fileButtonClass:"action",fileButtonHtml:"Choose File",fileClass:"uploader",fileDefaultHtml:"No file selected",filenameClass:"filename",focusClass:"focus",hoverClass:"hover",idPrefix:"uniform",inputAddTypeAsClass:!0,inputClass:"uniform-input",radioClass:"radio",resetDefaultHtml:"Reset",resetSelector:!1,selectAutoWidth:!0,selectClass:"selector",selectMultiClass:"uniform-multiselect",submitDefaultHtml:"Submit",textareaClass:"uniform",useID:!0,wrapperClass:null},elements:[]},e.fn.uniform=function(t){var n=this;return t=e.extend({},e.uniform.defaults,t),x||(x=!0,f()&&(H=!1)),H?(t.resetSelector&&e(t.resetSelector).mouseup(function(){window.setTimeout(function(){e.uniform.update(n)},10)}),this.each(function(){var n,s,a,i=e(this);if(i.data("uniformed"))return e.uniform.update(i),void 0;for(n=0;A.length>n;n+=1)if(s=A[n],s.match(i,t))return a=s.apply(i,t),i.data("uniformed",a),e.uniform.elements.push(i.get(0)),void 0})):this},e.uniform.restore=e.fn.uniform.restore=function(n){n===t&&(n=e.uniform.elements),e(n).each(function(){var t,n,s=e(this);n=s.data("uniformed"),n&&(n.remove(),t=e.inArray(this,e.uniform.elements),t>=0&&e.uniform.elements.splice(t,1),s.removeData("uniformed"))})},e.uniform.update=e.fn.uniform.update=function(n){n===t&&(n=e.uniform.elements),e(n).each(function(){var t,n=e(this);t=n.data("uniformed"),t&&t.update(n,t.options)})}})(jQuery);(function($){$(document).ready(function(){var $locked_containers=[];$('.et_bloom_make_form_visible').removeAttr('style');$('.et_bloom_custom_html_form input[type="radio"], .et_bloom_custom_html_form input[type="checkbox"]').uniform();$('body').on('click','span.et_bloom_close_button',function(){perform_popup_closing($(this).closest('.et_bloom_optin'));return!1});function perform_popup_closing($popup_container){$popup_container.addClass('et_bloom_exit_animation');setTimeout(function(){if($popup_container.hasClass('et_bloom_trigger_click')){$popup_container.removeClass('et_bloom_visible et_bloom_animated et_bloom_exit_animation')}else{$popup_container.remove()}},400);$('body').removeClass('et_bloom_popup_active')}
function update_stats_table($type,$this_button){if('logged'===bloomSettings.is_user_logged_in){return}
var $optin_id=typeof $this_button.data('current_optin_id')!=='undefined'?$this_button.data('current_optin_id'):$this_button.data('optin_id'),$page_id=$this_button.data('page_id'),$list_id=$this_button.data('list_id');$stats_data=JSON.stringify({'type':$type,'optin_id':$optin_id,'page_id':$page_id,'list_id':$list_id});$.ajax({type:'POST',url:bloomSettings.ajaxurl,data:{action:'bloom_handle_stats_adding',stats_data_array:$stats_data,update_stats_nonce:bloomSettings.stats_nonce}})}
function setCookieExpire(days){var ms=days*24*60*60*1000;var date=new Date();date.setTime(date.getTime()+ms);return "; expires="+date.toUTCString()}
function checkCookieValue(cookieName,value){return parseCookies()[cookieName]==value}
function parseCookies(){var cookies=document.cookie.split('; ');var ret={};for(var i=cookies.length-1;i>=0;i--){var el=cookies[i].split('=');ret[el[0]]=el[1]}
return ret}
function set_cookie($expire,$cookie_content){var $cookie_content=''==$cookie_content?'etBloomCookie=true':$cookie_content;cookieExpire=setCookieExpire($expire);document.cookie=$cookie_content+cookieExpire+"; path=/"}
function get_url_parameter(param_name){var page_url=window.location.search.substring(1);var url_variables=page_url.split('&');for(var i=0;i<url_variables.length;i++){var curr_param_name=url_variables[i].split('=');if(curr_param_name[0]==param_name){return curr_param_name[1]}}}
function make_popup_visible($popup,$delay,$cookie_exp,$cookie_content){if(!$popup.hasClass('et_bloom_visible')){setTimeout(function(){$popup.addClass('et_bloom_visible et_bloom_animated');$stats_data_container=0!=$popup.find('.et_bloom_custom_html_form').length?$popup.find('.et_bloom_custom_html_form'):$popup.find('.et_bloom_submit_subscription');update_stats_table('imp',$stats_data_container);if(''!=$cookie_exp){set_cookie($cookie_exp,$cookie_content)}
if($('.et_bloom_resize').length){$('.et_bloom_resize.et_bloom_visible').each(function(){define_popup_position($(this),!0,0)})}
display_image($popup)},$delay)}}
function display_image($popup){setTimeout(function(){$popup.find('.et_bloom_image').addClass('et_bloom_visible_image')},500)}
function auto_popup($current_popup_auto,$delay){var $data_holder=$current_popup_auto.find('.et_bloom_custom_html_form').length?$current_popup_auto.find('.et_bloom_custom_html_form'):$current_popup_auto.find('.et_bloom_submit_subscription'),page_id=$data_holder.data('page_id'),optin_id=$data_holder.data('optin_id'),list_id=$data_holder.data('list_id');if(!$current_popup_auto.hasClass('et_bloom_animated')){var $cookies_expire_auto=$current_popup_auto.data('cookie_duration')?$current_popup_auto.data('cookie_duration'):!1,$already_subscribed=checkCookieValue('et_bloom_subscribed_to_'+optin_id+list_id,'true');if(((!1!==$cookies_expire_auto&&!checkCookieValue('etBloomCookie_'+optin_id,'true'))||!1==$cookies_expire_auto)&&!$already_subscribed){if(!1!==$cookies_expire_auto){make_popup_visible($current_popup_auto,$delay,$cookies_expire_auto,'etBloomCookie_'+optin_id+'=true')}else{make_popup_visible($current_popup_auto,$delay,'','')}}}}
function scroll_trigger($current_popup_bottom,is_bottom_trigger){var triggered=0,$data_holder=$current_popup_bottom.find('.et_bloom_custom_html_form').length?$current_popup_bottom.find('.et_bloom_custom_html_form'):$current_popup_bottom.find('.et_bloom_submit_subscription'),page_id=$data_holder.data('page_id'),optin_id=$data_holder.data('optin_id');list_id=$data_holder.data('list_id');if(!$current_popup_bottom.hasClass('et_bloom_animated')){var cookies_expire_bottom=$current_popup_bottom.data('cookie_duration')?$current_popup_bottom.data('cookie_duration'):!1,$already_subscribed=checkCookieValue('et_bloom_subscribed_to_'+optin_id+list_id,'true');if(!0==is_bottom_trigger){var scroll_trigger=$('.et_bloom_bottom_trigger').length?$('.et_bloom_bottom_trigger').offset().top:$(document).height()-500}else{var scroll_pos=$current_popup_bottom.data('scroll_pos')>100?100:$current_popup_bottom.data('scroll_pos'),scroll_trigger=100==scroll_pos?$(document).height()-50:$(document).height()*scroll_pos/100}
$(window).scroll(function(){if(((!1!==cookies_expire_bottom&&!checkCookieValue('etBloomCookie_'+optin_id,'true'))||!1==cookies_expire_bottom)&&!$already_subscribed){if($(window).scrollTop()+$(window).height()>scroll_trigger){if(0==triggered){if(!1!==cookies_expire_bottom){make_popup_visible($current_popup_bottom,0,cookies_expire_bottom,'etBloomCookie_'+optin_id+'=true')}else{make_popup_visible($current_popup_bottom,0,'','')}
triggered++}}}})}}
if($('.et_bloom_auto_popup').length){$('.et_bloom_auto_popup:not(.et_bloom_visible)').each(function(){var this_el=$(this),delay=''!==this_el.data('delay')?this_el.data('delay')*1000:0;auto_popup(this_el,delay)})}
if($('.et_bloom_trigger_bottom').length){$('.et_bloom_trigger_bottom:not(.et_bloom_visible)').each(function(){scroll_trigger($(this),!0)})}
if($('.et_bloom_scroll').length){$('.et_bloom_scroll:not(.et_bloom_visible)').each(function(){scroll_trigger($(this),!1)})}
if($('.et_bloom_trigger_click').length){$('.et_bloom_trigger_click:not(.et_bloom_visible)').each(function(){var $this_el=$(this),selector=$this_el.attr('data-trigger_click');if(typeof selector!=='undefined'){$('body').on('click',selector,function(){make_popup_visible($this_el,0,'','');return!1})}})}
if($('.et_bloom_trigger_idle').length){$('.et_bloom_trigger_idle:not(.et_bloom_visible)').each(function(){var $this_el=$(this),$data_holder=$this_el.find('.et_bloom_custom_html_form').length?$this_el.find('.et_bloom_custom_html_form'):$this_el.find('.et_bloom_submit_subscription'),page_id=$data_holder.data('page_id'),optin_id=$data_holder.data('optin_id'),list_id=$data_holder.data('list_id');if(!$this_el.hasClass('et_bloom_animated')){var $cookies_expire_idle=$this_el.data('cookie_duration')?$this_el.data('cookie_duration'):!1,$already_subscribed=checkCookieValue('et_bloom_subscribed_to_'+optin_id+list_id,'true');$idle_timeout=''!==$this_el.data('idle_timeout')?$this_el.data('idle_timeout')*1000:30000,$delay=0;if(((!1!==$cookies_expire_idle&&!checkCookieValue('etBloomCookie_'+optin_id,'true'))||!1==$cookies_expire_idle)&&!$already_subscribed){$(document).idleTimer($idle_timeout);$(document).on('idle.idleTimer',function(){if(!1!==$cookies_expire_idle){make_popup_visible($this_el,$delay,$cookies_expire_idle,'etBloomCookie_'+optin_id+'=true')}else{make_popup_visible($this_el,$delay,'','')}})}}})}
if('true'==get_url_parameter('et_bloom_popup')){$('.et_bloom_after_comment').each(function(){auto_popup($(this),0)})}
if($('.et_bloom_after_order').length){$('.et_bloom_after_purchase').each(function(){auto_popup($(this),0)})}
if($('.et_bloom_locked_container').length){var $i=0;$('.et_bloom_locked_container').each(function(){var $this_el=$(this),content=$this_el.find('.et_bloom_locked_content'),form=$this_el.find('.et_bloom_locked_form'),page_id=$this_el.data('page_id'),optin_id=$this_el.data('optin_id');$this_el.data('container_id',$i);$locked_containers.push(content);if(checkCookieValue('et_bloom_unlocked'+optin_id+page_id,'true')){content.css({'display':'block'});form.remove()}else{content.remove();update_stats_table('imp',$this_el)}
$i++})}
$('body').on('click','.et_bloom_locked_container .et_bloom_submit_subscription',function(){var $current_container=$(this).closest('.et_bloom_locked_container'),container_id=$current_container.data('container_id'),page_id=$current_container.data('page_id'),optin_id=typeof $current_container.data('current_optin_id')!=='undefined'?$current_container.data('current_optin_id'):$current_container.data('optin_id');perform_subscription($(this),$current_container,container_id,page_id,optin_id);return!1});$('body').on('click','.et_bloom_locked_container .et_bloom_custom_html_form input[type="submit"], .et_bloom_locked_container .et_bloom_custom_html_form button[type="submit"]',function(){var current_container=$(this).closest('.et_bloom_locked_container'),container_id=current_container.data('container_id'),page_id=current_container.data('page_id'),optin_id=current_container.data('optin_id');unlock_content(current_container,container_id,page_id,optin_id)});function unlock_content(current_container,container_id,locked_page_id,locked_optin_id){set_cookie(365,'et_bloom_unlocked'+locked_optin_id+locked_page_id+'=true');current_container.find('.et_bloom_locked_form').replaceWith($locked_containers[container_id]);current_container.find('.et_bloom_locked_content').css({'display':'block'})}
if($('.et_bloom_below_post').length){if($('body').hasClass('et_pb_pagebuilder_layout')){var bottom_inline=$('.et_bloom_below_post'),divi_container='<div class="et_pb_row"><div class="et_pb_column et_pb_column_4_4"></div></div>';if(bottom_inline.length){$('.et_pb_section').not('.et_pb_fullwidth_section').last().append(divi_container).find('.et_pb_row').last().find('.et_pb_column').append(bottom_inline)}}}
function define_popup_position($this_popup,$just_loaded,$message_space){var this_popup=$this_popup.find('.et_bloom_form_container'),popup_max_height=this_popup.hasClass('et_bloom_popup_container')?$(window).height()-40:$(window).height()-20,real_popup_height=0,percentage=this_popup.parent().hasClass('et_bloom_flyin')?0.03:0.05,percentage=this_popup.hasClass('et_bloom_with_border')?percentage+0.03:percentage,breakout_offset=this_popup.hasClass('breakout_edge')?0.95:1,dashed_offset=this_popup.hasClass('et_bloom_border_dashed')?4:0,form_height=this_popup.find('form').innerHeight()+$message_space,form_add=!0==$just_loaded?5:0;if(this_popup.find('.et_bloom_form_header').hasClass('split')){var image_height=this_popup.find('.et_bloom_form_header img').innerHeight(),text_height=this_popup.find('.et_bloom_form_header .et_bloom_form_text').innerHeight(),header_height=image_height<text_height?text_height+30:image_height+30}else{var header_height=this_popup.find('.et_bloom_form_header img').innerHeight()+this_popup.find('.et_bloom_form_header .et_bloom_form_text').innerHeight()+30}
this_popup.css({'max-height':popup_max_height});if(this_popup.hasClass('et_bloom_popup_container')){var top_position=$(window).height()/2-this_popup.innerHeight()/2;this_popup.css({'top':top_position+'px'})}
this_popup.find('.et_bloom_form_container_wrapper').css({'max-height':popup_max_height-20});if((768>$('body').outerWidth()+15)||this_popup.hasClass('et_bloom_form_bottom')){if(this_popup.hasClass('et_bloom_form_right')||this_popup.hasClass('et_bloom_form_left')){this_popup.find('.et_bloom_form_header').css({'height':'auto'})}
real_popup_height=this_popup.find('.et_bloom_form_header').innerHeight()+this_popup.find('.et_bloom_form_content').innerHeight()+30+form_add;if(this_popup.hasClass('et_bloom_form_right')||this_popup.hasClass('et_bloom_form_left')){this_popup.find('.et_bloom_form_container_wrapper').css({'height':real_popup_height-30+dashed_offset})}}else{if(header_height<form_height){real_popup_height=this_popup.find('form').innerHeight()+30+$message_space}else{real_popup_height=header_height+30}
if(this_popup.hasClass('et_bloom_form_right')||this_popup.hasClass('et_bloom_form_left')){this_popup.find('.et_bloom_form_header').css({'height':real_popup_height*breakout_offset-dashed_offset});this_popup.find('.et_bloom_form_content').css({'min-height':real_popup_height-dashed_offset});this_popup.find('.et_bloom_form_container_wrapper').css({'height':real_popup_height})}}
if(real_popup_height>popup_max_height){this_popup.find('.et_bloom_form_container_wrapper').addClass('et_bloom_vertical_scroll')}else{this_popup.find('.et_bloom_form_container_wrapper').removeClass('et_bloom_vertical_scroll')}
if($this_popup.hasClass('et_bloom_popup')){$('body').addClass('et_bloom_popup_active')}}
$('body').on('click','.et_bloom_submit_subscription:not(.et_bloom_submit_subscription_locked)',function(){perform_subscription($(this),'','','','');return!1});function perform_subscription(this_button,current_container,container_id,locked_page_id,locked_optin_id){var this_form=this_button.parent(),list_id=this_button.data('list_id'),account_name=this_button.data('account'),service=this_button.data('service'),name=this_form.find('.et_bloom_subscribe_name input').val(),last_name=undefined!=this_form.find('.et_bloom_subscribe_last input').val()?this_form.find('.et_bloom_subscribe_last input').val():'',email=this_form.find('.et_bloom_subscribe_email input').val(),page_id=this_button.data('page_id'),optin_id=this_button.data('optin_id'),disable_dbl_optin=this_button.data('disable_dbl_optin'),$popup_container=this_form.closest('.et_bloom_optin'),is_popup=$popup_container.hasClass('et_bloom_popup')||$popup_container.hasClass('et_bloom_flyin'),$success_action_el=this_button.closest('.et_bloom_success_action'),success_action_details=$success_action_el.length>0?$success_action_el.parent().data('success_action_details').split('|'):[],success_action=2===success_action_details.length?success_action_details[0]:'',success_action_url=''!==success_action?success_action_details[1]:'';this_form.find('.et_bloom_subscribe_email input').removeClass('et_bloom_warn_field');if(''==email){this_form.find('.et_bloom_subscribe_email input').addClass('et_bloom_warn_field')}else{$subscribe_data=JSON.stringify({'list_id':list_id,'account_name':account_name,'service':service,'name':name,'email':email,'page_id':page_id,'optin_id':optin_id,'last_name':last_name,'dbl_optin':disable_dbl_optin});$.ajax({type:'POST',dataType:'json',url:bloomSettings.ajaxurl,data:{action:'bloom_subscribe',subscribe_data_array:$subscribe_data,subscribe_nonce:bloomSettings.subscribe_nonce},beforeSend:function(data){this_button.addClass('et_bloom_button_text_loading');this_button.find('.et_bloom_subscribe_loader').css({'display':'block'})},success:function(data){this_button.removeClass('et_bloom_button_text_loading');this_button.find('.et_bloom_subscribe_loader').css({'display':'none'});if(data){if(''!=current_container&&(data.success||'Invalid email'!=data.error)){unlock_content(current_container,container_id,locked_page_id,locked_optin_id)}else{if(data.error){this_form.find('.et_bloom_error_message').remove();this_form.prepend('<h2 class="et_bloom_error_message">'+data.error+'</h2>');this_form.parent().parent().find('.et_bloom_form_header').addClass('et_bloom_with_error')}
if(data.success&&''==current_container){set_cookie(365,'et_bloom_subscribed_to_'+optin_id+list_id+'=true');if(''===success_action||''===success_action_url){this_form.parent().find('.et_bloom_success_message').addClass('et_bloom_animate_message');this_form.parent().find('.et_bloom_success_container').addClass('et_bloom_animate_success');this_form.remove()}else{window.location=success_action_url}
if(is_popup&&$popup_container.hasClass('et_bloom_auto_close')){setTimeout(function(){perform_popup_closing($popup_container)},1400)}}}
if(is_popup){define_popup_position($popup_container,!1,50)}}}})}}
$('body').on('click','.et_bloom_custom_html_form input[type="submit"], .et_bloom_custom_html_form button[type="submit"]',function(){var this_button=$(this),form_container=this_button.closest('.et_bloom_custom_html_form');update_stats_table('con',form_container)});$(window).resize(function(){if($('.et_bloom_resize').length){$('.et_bloom_resize').each(function(){define_popup_position($(this),!1,0)})}})})})(jQuery);!function(a){a.idleTimer=function(b,c){var d;"object"==typeof b?(d=b,b=null):"number"==typeof b&&(d={timeout:b},b=null),c=c||document,d=a.extend({idle:!1,timeout:3e4,events:"mousemove keydown wheel DOMMouseScroll mousewheel mousedown touchstart touchmove MSPointerDown MSPointerMove"},d);var e=a(c),f=e.data("idleTimerObj")||{},g=function(b){var d=a.data(c,"idleTimerObj")||{};d.idle=!d.idle,d.olddate=+new Date;var e=a.Event((d.idle?"idle":"active")+".idleTimer");a(c).trigger(e,[c,a.extend({},d),b])},h=function(b){var d=a.data(c,"idleTimerObj")||{};if(null==d.remaining){if("mousemove"===b.type){if(b.pageX===d.pageX&&b.pageY===d.pageY)return;if("undefined"==typeof b.pageX&&"undefined"==typeof b.pageY)return;var e=+new Date-d.olddate;if(200>e)return}clearTimeout(d.tId),d.idle&&g(b),d.lastActive=+new Date,d.pageX=b.pageX,d.pageY=b.pageY,d.tId=setTimeout(g,d.timeout)}},i=function(){var b=a.data(c,"idleTimerObj")||{};b.idle=b.idleBackup,b.olddate=+new Date,b.lastActive=b.olddate,b.remaining=null,clearTimeout(b.tId),b.idle||(b.tId=setTimeout(g,b.timeout))},j=function(){var b=a.data(c,"idleTimerObj")||{};null==b.remaining&&(b.remaining=b.timeout-(+new Date-b.olddate),clearTimeout(b.tId))},k=function(){var b=a.data(c,"idleTimerObj")||{};null!=b.remaining&&(b.idle||(b.tId=setTimeout(g,b.remaining)),b.remaining=null)},l=function(){var b=a.data(c,"idleTimerObj")||{};clearTimeout(b.tId),e.removeData("idleTimerObj"),e.off("._idleTimer")},m=function(){var b=a.data(c,"idleTimerObj")||{};if(b.idle)return 0;if(null!=b.remaining)return b.remaining;var d=b.timeout-(+new Date-b.lastActive);return 0>d&&(d=0),d};if(null===b&&"undefined"!=typeof f.idle)return i(),e;if(null===b);else{if(null!==b&&"undefined"==typeof f.idle)return!1;if("destroy"===b)return l(),e;if("pause"===b)return j(),e;if("resume"===b)return k(),e;if("reset"===b)return i(),e;if("getRemainingTime"===b)return m();if("getElapsedTime"===b)return+new Date-f.olddate;if("getLastActiveTime"===b)return f.lastActive;if("isIdle"===b)return f.idle}return e.on(a.trim((d.events+" ").split(" ").join("._idleTimer ")),function(a){h(a)}),f=a.extend({},{olddate:+new Date,lastActive:+new Date,idle:d.idle,idleBackup:d.idle,timeout:d.timeout,remaining:null,tId:null,pageX:null,pageY:null}),f.idle||(f.tId=setTimeout(g,f.timeout)),a.data(c,"idleTimerObj",f),e},a.fn.idleTimer=function(b){return this[0]?a.idleTimer(b,this[0]):this}}(jQuery)