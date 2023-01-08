//= require hammerjs

const imageElement = document.querySelector('.pinch-zoom');

const hammer = new Hammer(imageElement);
hammer.get('pinch').set({ enable: true });

// Set the transform origin to the center of the image
image.style.transformOrigin = 'center';

// Listen for pinch events
hammer.on('pinch', (event) => {
  // Set the scale of the image
  image.style.transform = `scale(${event.scale})`;
});
