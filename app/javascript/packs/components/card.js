function moveToLeft() {
  const buttons = document.querySelectorAll('.remove-box');
  console.log(buttons);
  if (buttons) {
    console.log('oooo');
    buttons.forEach( (button) => {
      const card = button.parentElement.parentElement.parentElement.parentElement;
      button.addEventListener('click', () => {
        console.log(card)
        card.style.marginLeft = "-1400px";
      });
    });
  }
}
export { moveToLeft };
