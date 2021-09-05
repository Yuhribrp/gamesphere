import Typed from 'typed.js';

const headerTyped = () => {
  const element = document.querySelector('.typed-header');
  if (element) {
    new Typed('.typed-header', {
      strings: ['The Galaxy Biggest Gamers Community^1200'],
      // ['For You ^600', 'For Your Boat &#x2693; ^800'],
      typeSpeed: 100,
      loop: true,
      smartBackspace: true,
      showCursor: false,
    });
  }
};

export { headerTyped };