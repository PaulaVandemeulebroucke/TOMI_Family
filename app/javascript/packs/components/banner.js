import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Big - Family"],
    typeSpeed: 50,
    loop: false
  });
}

export { loadDynamicBannerText };
