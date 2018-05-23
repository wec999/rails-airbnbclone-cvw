function priceCalculator() {

  function calculatePrice () {
    let endDateValue = startDate.value
    let startDateValue = endDate.value
    let price = priceNight.innerHTML
    let date1 = new Date(startDateValue);
    let date2 = new Date(endDateValue);
    let timeDiff = Math.abs(date2.getTime() - date1.getTime());
    let diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));

    let finalPrice = price * diffDays;


    if (isNaN(finalPrice) == false) {
      $("#total-price").text(finalPrice);
    }
  }

  const startDate = document.getElementById("booking_start_date");
  if(startDate === null) return;

  const endDate = document.getElementById("booking_end_date");
  const priceNight = document.getElementById("price");


  startDate.addEventListener('change', calculatePrice);
  endDate.addEventListener('change', calculatePrice);

}

export {priceCalculator};


