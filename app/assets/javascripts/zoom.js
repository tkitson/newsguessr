// var modal = document.getElementById('myModal');

// // Get the image and insert it inside the modal - use its "alt" text as a caption
// var img = document.getElementById('myImg');
// var modalImg = document.getElementById("img01");

// img.onclick = function(){
//     modal.style.display = "block";
//     modalImg.src = this.src;
// }


// // When the user clicks on <span> (x), close the modal
// modal.onclick = function() {
//     img01.className += " out";
//     setTimeout(function() {
//        modal.style.display = "none";
//        img01.className = "modal-content";
//      }, 400);

//  }


 // Get the modal
const modal = document.getElementById('myModal');
const modalImg = document.getElementById("img01");

var img = document.querySelectorAll('.front-page-img');

for (var i=0; i<img.length; i++){

    img[i].onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
}

}

// When the user clicks on <span> (x), close the modal
modal.onclick = function() {
    img01.className += " out";
    setTimeout(function() {
       modal.style.display = "none";
       img01.className = "modal-content";
     }, 400);

 }
