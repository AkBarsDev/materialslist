document.addEventListener('DOMContentLoaded', function () {
	muteBreadcrumb();
	const userLi = document.querySelector('.userLk');
	const menu = document.querySelector('.menu');
	const button = document.querySelector('.menu-button');
	button.addEventListener('click', () => {
		// alert('event click');
		if (menu.classList.contains('activated')) {
			// alert('remove activated');
			menu.classList.remove('activated');
			userLi.classList.add('hidden');
		}
		else {
			// alert('add activated');
			userLi.classList.remove('hidden');
			menu.classList.add('activated');
		}
	});

});


$(window).on('load resize', function () {
	//filename input
	$('.input-file input[type=file]').on('change', function () {
		let file = this.files[0];
		$(this).closest('.input-file').find('.input-file-text').html(file.name);
	});

	const userLi = document.querySelector('.userLk');
	const userLiLarge = document.querySelector('.userLkLarge');

	//var navWidth = $('nav').width();
	var totalWidth = 0;
	$('nav li').each(function () {
		totalWidth += $(this).outerWidth(true);
	});
	if (document.documentElement.clientWidth < 1200) {
		// navigation();
		$('li').addClass('drop');
		$('nav ul').addClass('dropdown');
		userLiLarge.classList.add('hidden');
		userLi.classList.remove('hidden');

	} else {
		$('nav ul').removeClass('dropdown');
		$('li').removeClass('drop');
		userLi.classList.add('hidden');
		userLiLarge.classList.remove('hidden');
	}

});


function muteBreadcrumb() {

	const content = document.querySelector('.breadcrumps');
	const items = Array.from(content.getElementsByTagName('a'));
	let a = items.length - 1;
	items[a].classList.toggle('disabled');
	items[a].removeAttribute("href");
}
