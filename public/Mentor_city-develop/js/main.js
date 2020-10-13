const sideBar = document.querySelector(".side-bar");
const bars = document.querySelector(".top-bar__bars");
const close = document.querySelector(".top-bar__close");
const dropdownBtn = document.querySelector(".button--available");
const availableContainer = document.querySelector(".dropdown-box");

bars.addEventListener("click", (e) => {
	e.preventDefault();
	bars.style.display = "none";
	close.style.display = "block";
	sideBar.classList.add("sidebar-transform");
});

close.addEventListener("click", (e) => {
	e.preventDefault();
	bars.style.display = "block";
	close.style.display = "none";
	sideBar.classList.remove("sidebar-transform");
});

// dropdownBtn.addEventListener("click", (e) => {
// 	e.preventDefault();
// 	availableContainer.classList.toggle("dropdown-box-show");
// });



$('.button--available').on('click', function(e){
	e.preventDefault();
    $('.dropdown-box').toggleClass('dropdown-box-show');
});

