// https://github.com/gajus/swing#events
// https://github.com/uqlibrary/polymer-prototypes/blob/master/bower_components/swipeable-card/swipeable-card.html

function swipe() {
  // Prepare the cards in the stack for iteration.
  const cards = [].slice.call(document.querySelectorAll('.swipe-ul .swipe-li'));

  // An instance of the Stack is used to attach event listeners.
  const stack = Swing.Stack();
  const swing = stack.on('throwout', (eventObject) => {});

  cards.forEach((targetElement) => {
    // Add card element to the Stack.
    stack.createCard(targetElement);
  });

  // Add event listener for when a card is thrown out of the stack.
  stack.on('throwout', (throwout) => {
    // e.target Reference to the element that has been thrown out of the stack.
    // e.throwDirection Direction in which the element has been thrown (Direction.LEFT, Direction.RIGHT).

    console.log('Card has been thrown out of the stack.');
    console.log('Throw direction: ' + (throwout.throwDirection == Direction.LEFT ? 'left' : 'right'));
  });

  // Add event listener for when a card is thrown in the stack, including the spring back into place effect.
  stack.on('throwin', () => {
    console.log('Card has snapped back to the stack.');
  });
}

export { swipe }
