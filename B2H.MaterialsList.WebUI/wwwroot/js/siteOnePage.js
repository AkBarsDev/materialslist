document.addEventListener('DOMContentLoaded', function () {
	muteBreadcrumb();
	const userLi = document.querySelector('.userLk');
	const menu = document.querySelector('.menu');
	const button = document.querySelector('.menu-button');
	button.addEventListener('click', () => {
		if (menu.classList.contains('activated')) {
			menu.classList.remove('activated');
			userLi.classList.add('hidden');
		}
		else {
			userLi.classList.remove('hidden');
			menu.classList.add('activated');
		}
	});
	$.getJSON('http://localhost/api/Categories/7c20c387-a301-4e2b-6f85-08dc45e23f9f', function (data) {
		add_select("main_select", data, main_select_onchange);
	});
	document.getElementById('category').onchange = tom_select_onchange;
});

$(window).on('load resize', function () {
	$('.input-file input[type=file]').on('change', function () {
		let file = this.files[0];
		$(this).closest('.input-file').find('.input-file-text').html(file.name);
	});

	const userLi = document.querySelector('.userLk');
	const userLiLarge = document.querySelector('.userLkLarge');

	var totalWidth = 0;
	$('nav li').each(function () {
		totalWidth += $(this).outerWidth(true);
	});
	if (document.documentElement.clientWidth < 1200) {
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


function add_select(select_id, data, onchange_function) {
	var categoriesArray = Array.from(data.result.children);
	const select = document.createElement("select");
	var id = select_id;
	select.id = id;
	select.className = "dynamic-select";
	const div = document.getElementById("select-container");
	div.appendChild(select);
	load_combo(id, categoriesArray);
	document.getElementById(select_id).onchange = onchange_function;
}
function add_option(select_id, text, value) {
	var select = document.getElementById(select_id);
	select.options[select.options.length] = new Option(text, value);
}

function clear_combo(select_id) {
	var select = document.getElementById(select_id);
	select.options.length = 0;
}

function load_combo(select_id, option_array) {
	add_option(select_id, "Выберите категорию", "defaultSelect");
	$("option[value='defaultSelect']").attr("disabled", "disabled");
	for (var i = 0; i < option_array.length; i++) {
		add_option(select_id, option_array[i].name, option_array[i].id);
	}
}

function delete_select(select_id) {
	const select = document.getElementById(select_id);
	if (select != null) {
		select.remove();
	}
}

function remove_selected_attribute(select_id) {
	const select = document.getElementById(select_id);
	var select_options = Array.from(select.options);
	select_options.forEach((element) => {
		element.removeAttribute("selected");
	});
}

function set_selected_attribute(select, option_value) {
	var thirdSelect_options = Array.from(select.options);
	thirdSelect_options.forEach((element) => {
		if (element.value === option_value) {
			element.setAttribute('selected', 'selected');
		}
	});
}

function set_final_input(select_id) {
	if (document.getElementById('CategoryId') == null) {
		const final = document.createElement("input");
		final.id = "CategoryId";
		final.name = "CategoryIdOption";
		final.value = document.getElementById(select_id).value;
		final.className = "hidden";
		const div = document.getElementById("select-container");
		div.appendChild(final);
	} else {
		const final = document.getElementById('CategoryId');
		final.value = document.getElementById(select_id).value;
	}
}
function main_select_onchange() {
	delete_select("secondSelect");
	delete_select("thirdSelect");
	delete_select("forthSelect");
	delete_select("fifthSelect");
	delete_select("CategoryId");
	var main_select = document.getElementById("main_select");
	var x = main_select.value;
	const requestString = 'http://localhost/api/Categories/' + x;
	$.getJSON(requestString, function (data) {
		if (data.result.children.length != 0) {
			add_select("secondSelect", data, secondSelect_onchange);
		} else {
			set_final_input("main_select");
		}
	});
}

function secondSelect_onchange() {
	delete_select("thirdSelect");
	delete_select("forthSelect");
	delete_select("fifthSelect");
	delete_select("CategoryId");
	var main_select = document.getElementById("secondSelect");
	var x = main_select.value;
	const requestString2 = 'http://localhost/api/Categories/' + x;
	$.getJSON(requestString2, function (data) {
		if (data.result.children.length != 0) {
			add_select("thirdSelect", data, thirdSelect_onchange);
		} else {
			set_final_input("secondSelect");
		}
	});
}

function thirdSelect_onchange() {
	delete_select("forthSelect");
	delete_select("fifthSelect");
	delete_select("CategoryId");
	var main_select = document.getElementById("thirdSelect");
	var x = main_select.value;
	const requestString3 = 'http://localhost/api/Categories/' + x;
	$.getJSON(requestString3, function (data) {
		if (data.result.children.length != 0) {
			add_select("forthSelect", data, forthSelect_onchange);
		} else {
			set_final_input("thirdSelect");
		}
	});
}

function forthSelect_onchange() {
	delete_select("fifthSelect");
	delete_select("CategoryId");
	var main_select = document.getElementById("forthSelect");
	var x = main_select.value;
	const requestString4 = 'http://localhost/api/Categories/' + x;
	$.getJSON(requestString4, function (data) {
		if (data.result.children.length != 0) {
			add_select("fifthSelect", data, fifthSelect_onchange);
		} else {
			set_final_input("forthSelect");
		}
	});
}


function tom_select_onchange() {
	remove_selected_attribute("main_select");
	delete_select("secondSelect");
	delete_select("thirdSelect");
	delete_select("forthSelect");
	delete_select("fifthSelect");
	delete_select("CategoryId");
	const tom_select = document.getElementById("category");
	if (tom_select.value != "") {
		var x = tom_select.value;
		const requestStringTom = 'http://localhost/api/Breadcrumb/category/' + x;
		$.getJSON(requestStringTom, function (data) {
			var tomCategoriesRaw = Array.from(data.result);
			var tomCategories = tomCategoriesRaw.reverse();
			const tomLength = tomCategories.length - 2;
			const main_select = document.getElementById("main_select");
			set_selected_attribute(main_select, tomCategories[1].id);
			if (tomLength == 2) {
				var requestString = 'http://localhost/api/Categories/' + main_select.value;
				$.getJSON(requestString, function (data) {
					add_select("secondSelect", data, secondSelect_onchange);
					const secondSelect = document.getElementById('secondSelect');
					set_selected_attribute(secondSelect, tomCategories[2].id);
					var requestStringSecond = 'http://localhost/api/Categories/' + secondSelect.value;
					$.getJSON(requestStringSecond, function (data) {
						add_select("thirdSelect", data, thirdSelect_onchange);
						set_selected_attribute(thirdSelect, tomCategories[3].id);
						set_final_input("thirdSelect");
					});
				});
			}
			if (tomLength == 1) {
				var requestString = 'http://localhost/api/Categories/' + main_select.value;
				$.getJSON(requestString, function (data) {
					add_select("secondSelect", data, secondSelect_onchange);
					const secondSelect = document.getElementById('secondSelect');
					set_selected_attribute(secondSelect, tomCategories[2].id);
					set_final_input("secondSelect");
				});
			}
			if (tomLength == 3) {
				var requestString = 'http://localhost/api/Categories/' + main_select.value;
				$.getJSON(requestString, function (data) {
					add_select("secondSelect", data, secondSelect_onchange);
					const secondSelect = document.getElementById('secondSelect');
					set_selected_attribute(secondSelect, tomCategories[2].id);
					var requestStringSecond = 'http://localhost/api/Categories/' + secondSelect.value;
					$.getJSON(requestStringSecond, function (data) {
						add_select("thirdSelect", data, thirdSelect_onchange);
						const thirdSelect = document.getElementById('thirdSelect');
						set_selected_attribute(thirdSelect, tomCategories[3].id);
						var requestStringThird = 'http://localhost/api/Categories/' + thirdSelect.value;
						$.getJSON(requestStringThird, function (data) {
							add_select("forthSelect", data, forthSelect_onchange);
							set_selected_attribute(thirdSelect, tomCategories[3].id);
							set_final_input("forthSelect");
						});
					});
				});
			}
		});
	}
}


//const inputElement = document.getElementById('input-name');

//	inputElement.addEventListener('input', () => {
//		if (isFirstWordRussianNoun(inputElement.value) != null) {
//			inputElement.setCustomValidity('Первое слово должно быть существительным на русском языке.');
//			alert("no");
//		} else {
//			inputElement.setCustomValidity('');
//		}
//	});

//function isFirstWordRussianNoun(inputValue) {
//	const firstWord = inputValue.trim().split(' ')[0];
//	const notAdjectiveEnding = /\D+(?=ая$)/iu;
//	return firstWord.match(/\D+(?=(ая$|яя$|ый$|ий$|ое$|ёе$|ые$|ие$))/iu);
//}



const form = document.getElementById("card-edit-form");

form.addEventListener('submit', (evt) => {
	evt.preventDefault();
	const inputElement = document.getElementById('input-name');

	if (isFirstWordRussianNoun(inputElement.value) != null) {
		alert("Название материала должно начинаться с существительного на русском языке!");
		return;
	} else {
		form.submit();
	}
});

function isFirstWordRussianNoun(inputValue) {
	const firstWord = inputValue.trim().split(' ')[0];
	const regex = /^свая$/iu;
	if (regex.test(firstWord) == true) {
		return null;
	}
	return firstWord.match(/\D+(?=(ая$|яя$|ый$|ий$|ое$|ёе$|ые$|ие$))/iu);
}


function muteBreadcrumb() {

	const content = document.querySelector('.breadcrumps');
	const items = Array.from(content.getElementsByTagName('a'));
	let a = items.length - 1;
	items[a].classList.toggle('disabled');
	items[a].removeAttribute("href");
}