var customer = {}
var hola = null
var promise = new Promise(function (resolve, reject) {
  return ajax
})
.then(function(response) {
  customer = response
  return "hola"
})
.then(function(holaP) {
  hola = holaP
  return 5
})
.then(function (val5) {
  return []
})
.then(function (arr) {})
.then(function () {
  customer
  hola
})
