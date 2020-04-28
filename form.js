const total = document.querySelector('#total-score .number')

document.querySelector('.wrapper').addEventListener('change', function(event) { // First we apply the ONLY one listener to do the listening for us - we don't need listener on each checkbox
  const checked = this.querySelectorAll('input[type="checkbox"]:checked');
  var sum = 0;
  for (var i =0 ; i < checked.length; i++) {
  	sum += parseInt(checked[i].value);
  }
  console.log(sum);
  // We count all selected inputs in side the main wrapper. 
  total.innerHTML = sum // We update the total counter
})