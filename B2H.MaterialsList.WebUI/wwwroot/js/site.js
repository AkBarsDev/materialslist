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

	if (document.getElementById("filter-container") != null) {

		//1
		var biblioteka = document.getElementById("biblioteka");
		filterOnClick(biblioteka);
		//2
		var shablon = document.getElementById("shablon");
		filterOnClick(shablon);
		//3
		var nonmodeling = document.getElementById("nonmodeling");
		filterOnClick(nonmodeling);
		//4 
		var hasFile = document.getElementById("hasfile");
		hasFileCheck(hasFile);
		//5
		var sizeFilter = document.getElementById("sizeFilter");
		sizeCheck(sizeFilter);
	}

});

function filterOnClick(element) {
	element.addEventListener('click', () => {
		if (element.classList != "active-circle") {
			element.classList = "active-circle";
		} else {
			element.classList = "inactive-circle";
		}
	});
}
function sizeCheck(element) {
	const content = document.querySelector('.table');
	const items = Array.from(content.getElementsByTagName('tr')).slice(1);
	const sizeCheck1 = document.getElementById("sizeCheck1");
	const sizeCheck2 = document.getElementById("sizeCheck2");

	element.addEventListener('click', () => {
		if (element.classList != "active-circle") {
			element.classList = "active-circle";
			for (var i = 0; i < items.length; i++) {
				var cells = items[i].getElementsByTagName("td");
				if (hasSizeCheck(cells[0].innerHTML) == null) {
					items[i].classList = "hidden-filter";
				}
				pagination(20);
			}
			sizeCheck1.classList = "";
			sizeCheck2.classList = "";
			sizeCheckX.classList = "regular-18";
			sizeCheck1.addEventListener('input', () => {
				if (sizeCheck1.value != "") {
					for (var i = 0; i < items.length; i++) {
						if (sizeCheck2.value == "") { items[i].classList = ""; }
						var cells = items[i].getElementsByTagName("td");
						var name = cells[0].getElementsByTagName("a");
						if (!(name[0].innerHTML.includes(" " + sizeCheck1.value + "х"))) {
							items[i].classList = "hidden-filter";
						} else {
							if (name[0].innerHTML.includes("х" + sizeCheck2.value)) {
								items[i].classList = "";
							}
						}
						pagination(20);
					}
				} else {
					for (var i = 0; i < items.length; i++) {
						var cells = items[i].getElementsByTagName("td");
						var name = cells[0].getElementsByTagName("a");
						if (hasSizeCheck(cells[0].innerHTML) == null) {
							items[i].classList = "hidden-filter";
						} else {
							if (name[0].innerHTML.includes("х" + sizeCheck2.value)) {
								items[i].classList = "";
							} 
						}
						pagination(20);
					}
				}
			});
			sizeCheck2.addEventListener('input', () => {
				if (sizeCheck2.value != "") {
					for (var i = 0; i < items.length; i++) {
						if (sizeCheck1.value == "") { items[i].classList = ""; }

						var cells = items[i].getElementsByTagName("td");
						var name = cells[0].getElementsByTagName("a");
						if (!(name[0].innerHTML.includes("х" + sizeCheck2.value))) {
							items[i].classList = "hidden-filter";
						} else {
							if (name[0].innerHTML.includes(" " + sizeCheck1.value + "х")) {
								items[i].classList = "";
							}
						}
						pagination(20);
					}
				} else {
					for (var i = 0; i < items.length; i++) {
						var cells = items[i].getElementsByTagName("td");
						var name = cells[0].getElementsByTagName("a");
						if (hasSizeCheck(cells[0].innerHTML) == null) {
							items[i].classList = "hidden-filter";
						} else {
							if (name[0].innerHTML.includes(" " + sizeCheck1.value + "х")) {
								items[i].classList = "";
							} 
						}
						pagination(20);
					}
				}
			});
			
		} else {
			element.classList = "inactive-circle";
			sizeCheck1.text = "";
			sizeCheck2.text = "";
			sizeCheck1.classList = "hidden";
			sizeCheck2.classList = "hidden";
			sizeCheckX.classList = "hidden";
			for (var i = 0; i < items.length; i++) {
				if (items[i].classList == "hidden-filter") {
					items[i].classList = "";
				}
			}
		}
		pagination(20);
	});
}

function inputSizeCheck(text, number1) {
	var input = number1;
	var check = text.contains(input + "х");
	alert("check" + check);
	return check;
}
function hasSizeCheck(text) {
	return text.match(/.+\s\d+х\d+.+/iu);
}
function hasFileCheck(element) {
	const content = document.querySelector('.table');
	const items = Array.from(content.getElementsByTagName('tr')).slice(1);

	element.addEventListener('click', () => {
		if (element.classList != "active-circle") {
			element.classList = "active-circle";
			for (var i = 0; i < items.length; i++) {
				var cells = items[i].getElementsByTagName("td");
				if (cells.length == 2) {
					items[i].classList = "hidden-filter";
				}
			}

		} else {
			element.classList = "inactive-circle";
			for (var i = 0; i < items.length; i++) {
				if (items[i].classList == "hidden-filter") {
					items[i].classList = "";
				}
			}
		}
		pagination(20);
	});
}

function showFilter() {
	const filter = document.getElementById("filter-container");
	
	if (filter.classList != "hidden") {
		filter.classList = "hidden";
	} else { filter.classList = "filter-container"; }
}


$(document).ready(function () {
	window.setTimeout(function () {
		$('.alert').alert('close');
	},
		3000);
});

$(window).on('load resize', function () {
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


function pagination(itemsPerPage) {

	const content = document.querySelector('.table');
	const page = document.querySelector('.page');
	let currentPage = 0;
	const items1 = Array.from(content.getElementsByTagName('tr')).slice(1);
	const items = items1.filter((item) => item.classList.contains("hidden-filter") === false);

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


document.querySelectorAll('.first').forEach(item => {
	item.addEventListener('click', () => {
		let secondElement = item.querySelector('.second, .first');
		secondElement.style.display = (secondElement.style.display === 'none' || secondElement.style.display === '') ? 'block' : 'none';
	});
});

document.addEventListener("DOMContentLoaded", () => {
	const reqContent = document.getElementById("req-content");

	function loadContent(url, hash) {
		fetch(url)
			.then(response => response.text())
			.then(data => {
				reqContent.innerHTML = data;
				if (hash) {
					history.pushState(null, null, `#${hash}`);
					setTimeout(() => {
						const element = document.getElementById(hash);
						if (element) {
							element.scrollIntoView({ behavior: 'smooth' });
						}
					}, 100);
				}
			})
			.catch(error => {
				console.error("Error fetching content: ", error);
			});
	}

	document.querySelectorAll("#sidebar a, #more a").forEach(link => {
		link.addEventListener('click', (e) => {
			e.preventDefault();
			const href = e.target.getAttribute("href");
			const [url, hash] = href.split('#');
			loadContent(url, hash);
		});
	});

	// Обработка параметров controller и action из URL
	const params = new URLSearchParams(window.location.search);
	const controller = params.get('controller');
	const action = params.get('action');
	if (controller && action) {
		const url = `/${controller}/${action}`;
		loadContent(url);
	}
});