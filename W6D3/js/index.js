console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    console.log("We have your weather");
    coonsle.log("the temp is in kelvin for some reason?")
    console.log(data["main"]);
    // temp is kelvin??
  },
  error(){
    console.log("error!!")
  }

});

// Add another console log here, outside your AJAX request

console.log("other log!") // this logs first - maybe because the AJAX
// is fired async and is processed after this log is fired immediately.
