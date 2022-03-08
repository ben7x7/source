import { gsap } from "gsap";
import { TextPlugin } from "gsap/TextPlugin";

gsap.registerPlugin(TextPlugin);

const animationText = () => {

  gsap.to('#project', {duration: 2, text: "PROJECTS"});

};

export {animationText};

