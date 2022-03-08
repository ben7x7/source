import {gsap} from 'gsap';

const animationCard = () => {
  const tl = gsap.timeline({defaults: {duration: 0.75, ease: "power1.out"}});

  tl.fromTo('.box-container', {scale: 0 }, {scale: 1, ease: "power3.out", duration: 1.5})
  tl.fromTo('.b-logo', {scale: 0, rotation: -180, x: -50 }, {scale: 1, rotation: 0, x: 0}, '<50%')
  tl.fromTo('.box-title', {opacity: 0 , x: 50}, {opacity: 1, x: 0}, '<')
  tl.fromTo('.box-subtitle', {opacity: 0 , x: 50}, {opacity: 1, x: 0}, '<')
  tl.fromTo('.box-btn', {scale: 0}, {scale: 1, ease: "back.out(4)", duration: 1.5})

  const button = document.querySelector('button');

  button.addEventListener('click', () => {
    gsap.to('.box-container', { opacity: 0, y: 100, duration: 0.75, ease: "power1.out"});
  });
};

export {animationCard};
