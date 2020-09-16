// const hamburger = document.getElementById('hamburger');
// const show = document.getElementById('show');


// hamburger.addEventListener('click', (e) => {
//   if (e.target.classList.contains('hamburger')) {
//     e.target.classList.toggle('toggle');
//     show.classList.toggle('visible');
//     console.log(show);
//   }
// });

let hamburger;
let show;

window.onload = () => {
  // Make hamburger work
  hamburger = document.getElementById('hamburger');
  show = document.getElementById('show');

  hamburger.addEventListener('click', (e) => {
    hamburger.classList.toggle('toggle');
    show.classList.toggle('visible');
  });
}