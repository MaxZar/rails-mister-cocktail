import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Entertain your guests"],
    typeSpeed: 40,
    loop: false,
    backDelay: 1200,
    smartBackspace: true,
    showCursor: false,
    backSpeed: 200
  });
};

export { loadDynamicBannerText };
