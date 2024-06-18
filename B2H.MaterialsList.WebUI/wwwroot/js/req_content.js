
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

	document.querySelectorAll("#sidebar a, #more a, #mobile-sidebar a").forEach(link => {
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

	document.addEventListener('DOMContentLoaded', () => {
	const sidebarToggle = document.getElementById('sidebar-toggle');
	const mobileSidebar = document.getElementById('mobile-sidebar');

	sidebarToggle.addEventListener('click', () => {
		mobileSidebar.classList.toggle('open');
	});

	// Close mobile sidebar when clicking on any link inside it
	const sidebarLinks = mobileSidebar.querySelectorAll('a');
	sidebarLinks.forEach(link => {
		link.addEventListener('click', () => {
			mobileSidebar.classList.remove('open');
		});
	});

	// Close mobile sidebar when clicking on the free area inside it
	mobileSidebar.addEventListener('click', (event) => {
		if (event.target === mobileSidebar) {
			mobileSidebar.classList.remove('open');
		}
	});
});