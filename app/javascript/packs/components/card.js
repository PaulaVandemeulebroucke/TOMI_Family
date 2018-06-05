function moveToLeft(button) {
  console.log(this)
  const card = button.closest(".card-interest");
  card.style.marginLeft = "-1400px";
}
export { moveToLeft };
