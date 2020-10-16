const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".main-nav").toggleClass("active");
		$("body").toggleClass("disabled");
		$('#overlay').toggleClass('active');
	});
	$('#overlay').on('click', function() {
		$(this).removeClass('active');
		$('body').removeClass('disabled')
		$('.main-nav').removeClass('active');
		$('.toggle-menu').removeClass('active');
	})
}

function moveNavitem() {
	if ($(window).width() <= 1024) {
		$('.top-nav > #desktop').appendTo('nav .nav-mobile, .main-nav #mobile');
	} else {
		$('.top-nav > #desktop').appendTo('.main-nav .top-nav');
	}
}

//Slide banner
function EXIMMainBanner() {
	var swiperhomebanner = new Swiper('.home-banner', {
		loop: true,
		speed: 1500,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		pagination: {
            el: '.swiper-pagination',
			type: 'bullets',
			clickable: true,
        },
	});
}

//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#main-banner");

	if (pagesBanner.length >= 1) {
		$('main').css('padding-top', heightHeader);
	} else {
		$('main').css('padding-top', heightHeader);
	}
	if (mainBanner.length >= 1) {
		$('main').css('padding-top', 0);
	}
};

function checkFooter() {
	if ($('.full-page').length == 1) {
		$('footer').css('display', 'none')
	}
}

function listSlide() {
	var slidefiled = new Swiper('.h-3__slide .slide-filed', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.h-3__slide .swiper-button-next',
			prevEl: '.h-3__slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			600: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	});
}

function moveBreadcrum() {
	if ($('.global-breadcrumb').length >= 1) {
		$('main > .global-breadcrumb').appendTo('main #page-banner');
	}
}

function Slidepage() {
	var swiper = new Swiper('.history-slide .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 30,
		speed: 2000,
		loop: true,
		pagination: {
			el: '.history-slide .swiper-pagination',
			clickable: true,
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + '<h3>' + (index + 2017) + '</h3>' + '</span>';
			},
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			}
		},
	});
	// Slider projectdetail
	var galleryThumbs = new Swiper('.slide .gallery-thumbs', {
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		spaceBetween: 10,
		slidesPerView: 5,
		loop: true,
		loopedSlides: 5,
		slideToClickedSlide: true,
		breakpoints: {
			1280: {
				slidesPerView: 5,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
		},
	});
	var galleryTop = new Swiper('.slide .gallery-top', {
		spaceBetween: 30,
		loop: true,
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});
	galleryTop.params.control = galleryThumbs
	galleryThumbs.params.control = galleryTop

	// Slider tiện ích
	var projectother = new Swiper('.slide .slide-utilities', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.slide .swiper-button-next',
			prevEl: '.slide .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			}
		},
	});
	var $bottomSlide = null;
	var $bottomSlideContent = null;
	var slideimages = new Swiper(".slider .slider-images", {
		spaceBetween: 0,
		slidesPerView: 2,
		centeredSlides: true,
		roundLengths: true,
		loop: true,
		speed: 2000,
		clickable: true,
		navigation: {
			nextEl: ".slider .swiper-button-next",
			prevEl: ".slider .swiper-button-prev"
		},

	});

	// Slider news other
	var newsother = new Swiper('.slider .news-list', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		speed: 1000,
		// autoplay: {
		// 	delay: 2500,
		// 	disableOnInteraction: false,
		// },
		navigation: {
			nextEl: '.slider .swiper-button-next',
			prevEl: '.slider .swiper-button-prev',
		},
		breakpoints: {
			1280: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			}
		},
	});
}

function toolBout() {
	$('#sidebar-wrapper').find('.tool-ctrl').on('click', function() {
		$('#sidebar-wrapper').find('#sideBar').slideToggle()
	})
}

//Tabs detail
function tabsDescription() {
	$('.tabs > li').on('click', function() {
		var $panel = $(this).closest('.tab-panels');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').fadeOut(300, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).fadeIn(300, function() {
				$(this).addClass('active').fadeIn(300);
			});
		};
	});

}

function coutingNumber() {
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
		$({
			countNum: $this.text() + "<sup>+</sup>"
		}).animate({
			countNum: countTo
		}, {
			duration: 5000,
			easing: 'linear',
			step: function() {
				$this.text(Math.floor(this.countNum));
			},
			complete: function() {
				$this.text(this.countNum) + "<sup>+</sup>";
				//alert('finished');
			}

		});
	});
}

function ListnavCetalogry() {
	if ($(window).width() <= 991.98) {
		$('.project-nav .show-nav').on('click', function() {
			$('.project-nav .list-nav').slideToggle()
		})
	}
}

function FilterNav() {
	$('.project-nav .filter-nav').addClass('active')
	$('.project-nav .list-nav').find('#button-filter').on('click', function() {
		$('.project-nav .filter-nav').slideToggle()
	})
}
if ($(document).ready(function() {
		new Vivus("logo", {
			// type: "oneByOne",
			duration: 110,
			start: "autostart",
			forceRender: !1,
			dashGap: 0,
			selfDestroy: !0
		}, function() {
			window.console && ($(".cls-1").css("fill", "#1b75bc"), $(".cls-2").css("fill", "#1b75bc"), $("path").attr("stroke-width", "0"))
		});
	}));

function loading() {
	$(window).on('load', function() {
		$('#loading-container').delay(1800).queue(function(next) {
			$(this).addClass('complete')
			next();
		})
	})
}

function formHr() {
	$('#form-hr').appendTo('#form-inner')
}

function searchbox() {
	$('#desktop #searchbox').on('click', function() {
		$('#desktop #search-box').toggleClass('active')
	})
}

function activeMobileMenu() {
	if ($(window).width() <= 1024) {
		$('.nav-item.dropdown').on('click', function(e) {
			e.stopPropagation();
			$(e.currentTarget).children('.sub-menu').slideToggle();
		});
	}
}

function scrollSidebar() {
	$('#sidebar-wrapper').find('li').on('click', function() {
		$('html, body').animate({
			scrollTop: $($(this).attr('href')).offset().top
		}, 500, 'linear');
		
	})
}

document.addEventListener('DOMContentLoaded', () => {
	searchbox();
	loading();
	toggleMenuMobile();
	moveNavitem();
	EXIMMainBanner();
	checkLayoutBanner();
	checkFooter();
	listSlide();
	moveBreadcrum();
	Slidepage();
	toolBout();
	// tabsDescription();
	coutingNumber();
	ListnavCetalogry();
	FilterNav();
	formHr();
	scrollSidebar();
	activeMobileMenu();
	$('.pro-detail-4 .dropdown-item').click(function(e){
		var src = $(this).data('src')
		$('#planImage').attr('src',src)
	})
});