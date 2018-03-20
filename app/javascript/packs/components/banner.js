import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["T O M I - Family"],
    typeSpeed: 60,
    loop: false
  });
}

export { loadDynamicBannerText };
