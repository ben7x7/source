import VanillaTilt from 'vanilla-tilt';

const cardsAnimation = () => {
  const elements = document.querySelectorAll(".card");
  VanillaTilt.init(elements, {
    max: 25,
    speed: 400,
    glare: true,
    "max-glare": 1,
  });
}

export {cardsAnimation};
