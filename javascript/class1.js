function User(name, lastName) {
  age = 20
  this.fullName = function() {
    return name + ' ' + lastName
  }

  this.getAge = function() {
    return age
  }
}

function sumar(num1, num2) {
  num2 = num2 || 0
  num1 = num1 || 0
  return num1 + num2
}

[1,2,3,4,5].forEach(function (value, index) {
  console.log(index, value)
})

[1,2,3,4,5].map(function (value, index) {
  return value
})

[1,2,3,4,5,6].filter(function (value) {
  return value % 2 === 0
})
