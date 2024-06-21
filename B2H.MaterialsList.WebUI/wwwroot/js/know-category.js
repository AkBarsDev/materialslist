document.getElementById('category-button').addEventListener('click', function () {
	var categoryList = document.getElementById('category-list');
	categoryList.classList.toggle('active');
});

document.querySelectorAll('.category-item').forEach(function (item) {
	item.addEventListener('click', function () {
		var category = this.getAttribute('data-category');
		document.querySelectorAll('.base-board-card').forEach(function (card) {
			if (card.id === category) {
				card.style.display = 'block';
			} else {
				card.style.display = 'none';
			}
		});
	});
});
