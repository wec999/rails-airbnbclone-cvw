function modalPopup() {
  // Get the modal
  const modal = document.getElementById('myModal');
  if(modal === null) return;

  // Get the image and insert it inside the modal - use its "alt" text as a caption
  const img = document.getElementById('myImg');

  const modalImg = document.getElementById("img01");
  const captionText = document.getElementById("img-caption");
  img.onclick = function(){
      modal.style.display = "block";
      modalImg.src = this.getAttribute("src");
      captionText.innerHTML = this.getAttribute("alt");
  }

  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }
}

export { modalPopup };
