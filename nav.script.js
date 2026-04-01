function toggleMenu() {
  const menu = document.getElementById("site-menu");
  const button = document.getElementById("menu-toggle");
  const expanded = menu.classList.toggle("open");
  button.setAttribute("aria-expanded", expanded);
}

document.addEventListener("DOMContentLoaded", function () {
  const button = document.getElementById("menu-toggle");
  if (button) {
    button.addEventListener("click", toggleMenu);
  }
});
