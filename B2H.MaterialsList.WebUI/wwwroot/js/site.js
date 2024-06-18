document.addEventListener('DOMContentLoaded', function () {
	muteBreadcrumb();
	/*	navigation();*/
	pagination(20);
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


$(document).ready(function () {
	window.setTimeout(function () {
		$('.alert').alert('close');
	},
		3000);
});




//$("#downloadFromList").click(function (e) {

//	e.preventDefault();
//	//$.ajax({

//	//	url: $(this).attr("href"),
//	//	success: function (response) {
//	//		if (response.success === true) {
//	//			alert("success");
//	//		} else { alert("info") }
//	//	},
//	//	error: function () {
//	//		alert("что-то идет не так");
//	//	}

//	//});
//	$.ajax({
//		async: true,
//		type: 'POST',
//		dataType: 'text',
//		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
//		url: $(this).attr("href"),
//		success: function (response) {
//			if (response.success === true) {
//				alert("success");
//			} else { alert("info") }
//		},
//		error: function () {
//			alert("что-то идет не так");
//		}

//	});

//});

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

//function downloadFile(apiUrl) {
//	var obj = {};
//	obj.FileUrl = apiUrl;
//	$.ajax({
//		type: 'POST',
//		data: JSON.stringify(obj),
//		contentType: "application/json; charset=utf-8",
//		dataType: "json",
//		url: '/Home/Download',
//		success: function (response) {
//			if (response.success === true) {
//				alert("success");
//			} else { alert("info") }
//		},
//		error: function () {
//			alert("что-то идет не так");
//		}

//	});
//}
function pagination(itemsPerPage) {

	const content = document.querySelector('.table');
	const page = document.querySelector('.page');
	let currentPage = 0;
	const items = Array.from(content.getElementsByTagName('tr')).slice(1);

	function showPage(page) {
		const startIndex = page * itemsPerPage;
		const endIndex = startIndex + itemsPerPage;
		items.forEach((item, index) => {
			item.classList.toggle('hidden', index < startIndex || index >= endIndex);
		});
		updateActiveButtonStates();
	}
	function showPage2(page) {
		const startIndex = page * itemsPerPage;
		const endIndex = startIndex + itemsPerPage;
		items.forEach((item, index) => {
			item.classList.toggle('hidden', index < startIndex || index >= endIndex);
		});
		updateActiveButtonStates2();
	}
	function createPageButtons() {

		const totalPages = Math.ceil(items.length / itemsPerPage);
		const paginationContainer = document.createElement('div');
		const paginationDiv = document.body.appendChild(paginationContainer);
		paginationContainer.classList.add('switcher');
		var paragraphs = document.getElementsByClassName("switcher");
		if (paragraphs.length >= 1) {
			paragraphs[0].parentNode.removeChild(paragraphs[0]);
		}
		if (totalPages < 8) {
			const prevButton = document.createElement('button');
			prevButton.textContent = "<<";
			prevButton.classList.add('prev-button');
			prevButton.addEventListener('click', () => {
				if (currentPage != 0) {
					currentPage = currentPage - 1;
					showPage(currentPage);
					updateActiveButtonStates();
				}
			});
			page.appendChild(paginationContainer);
			paginationDiv.appendChild(prevButton);

			for (let i = 0; i < totalPages; i++) {
				const pageButton = document.createElement('button');
				pageButton.classList.add('page-button');
				pageButton.textContent = i + 1;
				pageButton.addEventListener('click', () => {
					currentPage = i;
					showPage(currentPage);
					updateActiveButtonStates();
				});

				page.appendChild(paginationContainer);
				paginationDiv.appendChild(pageButton);
			}

			const nextButton = document.createElement('button');
			nextButton.textContent = ">>";
			nextButton.classList.add('next-button');
			nextButton.addEventListener('click', () => {
				if (currentPage <= totalPages - 2) {
					currentPage = currentPage + 1;
					showPage(currentPage);
					updateActiveButtonStates();
				}
			});
			page.appendChild(paginationContainer);
			paginationDiv.appendChild(nextButton);
		}
		
		if (totalPages >= 8) {
			const prevButton = document.createElement('button');
			prevButton.textContent = "<<";
			prevButton.classList.add('prev-button');
			prevButton.addEventListener('click', () => {
				if (currentPage != 0) {
					currentPage = currentPage - 1;
					if (currentPage <= totalPages - 3) {
						createPageButtons();
					}
					showPage2(currentPage);
				}
			});
			page.appendChild(paginationContainer);
			paginationDiv.appendChild(prevButton);

			if (currentPage == 0) {
				for (let i = 0; i < 3; i++) {
					const pageButton = document.createElement('button');
					pageButton.classList.add('page-button');
					pageButton.textContent = i + 1;
					pageButton.addEventListener('click', () => {
						currentPage = i;
						createPageButtons();
						showPage2(currentPage);
					});
					page.appendChild(paginationContainer);
					paginationDiv.appendChild(pageButton);
				}
				const pointButton = document.createElement('button');
				pointButton.textContent = "...";
				pointButton.classList.add('page-button');
				pointButton.addEventListener('click', () => { });
				page.appendChild(paginationContainer);
				paginationDiv.appendChild(pointButton);

			}
			if (currentPage != 0 & currentPage < totalPages - 3) {
				for (let i = currentPage - 1; i < currentPage + 2; i++) {
					const pageButton = document.createElement('button');
					pageButton.classList.add('page-button');
					pageButton.textContent = i + 1;
					pageButton.addEventListener('click', () => {
						currentPage = i;
						createPageButtons();
						showPage2(currentPage);
					});
					page.appendChild(paginationContainer);
					paginationDiv.appendChild(pageButton);
				}
				const pointButton = document.createElement('button');
				pointButton.textContent = "...";
				pointButton.classList.add('page-button');
				pointButton.addEventListener('click', () => { });
				page.appendChild(paginationContainer);
				paginationDiv.appendChild(pointButton);

			}
			if (currentPage >= totalPages - 3) {
				const pageButton1 = document.createElement('button');
				pageButton1.classList.add('page-button');
				pageButton1.textContent = 1;
				pageButton1.addEventListener('click', () => {
					currentPage = 0;
					createPageButtons();
					showPage2(currentPage);
				});
				page.appendChild(paginationContainer);
				paginationDiv.appendChild(pageButton1);

				const pointButton = document.createElement('button');
				pointButton.textContent = "...";
				pointButton.classList.add('page-button');
				pointButton.addEventListener('click', () => { });
				page.appendChild(paginationContainer);
				paginationDiv.appendChild(pointButton);
				for (let i = totalPages - 3; i < totalPages - 1; i++) {
					const pageButton = document.createElement('button');
					pageButton.classList.add('page-button');
					pageButton.textContent = i + 1;
					pageButton.addEventListener('click', () => {
						currentPage = i;
						showPage2(currentPage);
					});
					page.appendChild(paginationContainer);
					paginationDiv.appendChild(pageButton);
				}
			}


			const lastButton = document.createElement('button');
			lastButton.textContent = totalPages;
			lastButton.classList.add('page-button');
			lastButton.addEventListener('click', () => {
				currentPage = totalPages - 1;
				createPageButtons();
				showPage2(currentPage);
			});
			page.appendChild(paginationContainer);
			paginationDiv.appendChild(lastButton);

			const nextButton = document.createElement('button');
			nextButton.textContent = ">>";
			nextButton.classList.add('next-button');
			nextButton.addEventListener('click', () => {
				if (currentPage <= totalPages - 2) {
					currentPage = currentPage + 1;
					if (currentPage <= totalPages - 3) {
						createPageButtons();
					}
					showPage2(currentPage);
				}
			});
			page.appendChild(paginationContainer);
			paginationDiv.appendChild(nextButton);
		}
	}

	function updateActiveButtonStates() {
		const pageButtons = document.querySelectorAll('.page-button');
		pageButtons.forEach((button, index) => {
			if (index === currentPage) {
				button.classList.add('active');
			} else {
				button.classList.remove('active');
			}
		});
	}
	function updateActiveButtonStates2() {
		const pageButtons = document.querySelectorAll('.page-button');
		pageButtons.forEach((button) => {
			let cur = parseInt(button.textContent);
			if (cur === currentPage + 1) {
				button.classList.add('active');
			} else {
				button.classList.remove('active');
			}
		});
	}

	createPageButtons();
	showPage(currentPage);

}


function muteBreadcrumb() {

	const content = document.querySelector('.breadcrumps');
	const items = Array.from(content.getElementsByTagName('a'));
	let a = items.length - 1;
	items[a].classList.toggle('disabled');
	items[a].removeAttribute("href");
}


