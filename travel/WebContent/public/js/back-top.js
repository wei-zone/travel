/* 返回顶部 */
/* js代码 */
$(function() {
	$(window).bind('scroll', {
			fixedOffsetBottom: parseInt($('.back-top').css('bottom'))
		},
		function(e) {
			var scrollTop = $(window).scrollTop();

			scrollTop > 100 ? $('.top-button').show() : $('.top-button').hide();
			if(!/msie 6/i.test(navigator.userAgent)) {
				if($(window).height() - ($(window).scrollTop()) > e.data.fixedOffsetBottom) {
					$('.back-top').css('bottom', $(window).height() - ($(window).scrollTop()))
				} else {
					$('.back-top').css('bottom', e.data.fixedOffsetBottom)
				}
			}
		});
	$('.top-button').click(function() {
		$('body,html').stop().animate({
			'scrollTop': 0,
			'duration': 100,
			'easing': 'ease-in'
		})
	});
});