import Glide from "@glidejs/glide";

new Glide('.glide', {
  perView: 1,
  type: 'slider',
  focusAt: 'center',
  // controls: 'controls',
  // breakpoints: {
  //   // under 800px override
  //   800: {
  //     autoplay: 2000,
  //     perView: 1
  //   }
  // }
}

).mount()
