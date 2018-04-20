function moveToLeft() {
  const buttons = document.querySelectorAll('.remove-box');
  if (buttons) {
    buttons.forEach( (button) => {
      const card = button.parentElement.parentElement.parentElement.parentElement;
      button.addEventListener('click', () => {
        console.log(card)
        card.style.marginLeft = "-600px";
      });
    });
  }
}

export { moveToLeft }
