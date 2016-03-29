var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

var printCities = function(cities) {
  for (var city in cities) {
    var provincialCities = cities[city].length;
    console.log(city + " has " + provincialCities + " cities");
  }
};


var printCitiesOneLine = function(cities) {
  var provDetails = "";
  for (var city in cities) {
    var provincialCities = cities[city].length;
       provDetails += (city + " has " + provincialCities + " cities. ");
  }
  return provInfo.trim();
};
