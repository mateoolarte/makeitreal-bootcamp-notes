function Person(attrs) {
  this.name = attrs.name
}
function User(attrs) {
  this.username = attrs.username
  Person.call(this, attrs)
}
User.prototype = Object.create(Person.prototype)
User.prototype.constructor = User
function Employee(attrs) {
  this.salary = attrs.salary
  User.call(this, attrs)
}
Employee.prototype = Object.create(User.prototype)
Customer.prototype.constructor = Employee
function Manager(attrs) {
  Employee.call(this, attrs)
}
Manager.prototype = Object.create(Employee.prototype)
Customer.prototype.constructor = Manager

var man = new Manager({
  salary: 100000,
  username: 'mateo',
  name: 'The Boss'
})

/////////////

function sayHi() {
  return 'Hi ' + this.name
}

function sayBye() {
  return 'Bye ' + this.name
}

function sayHiAndBye(fun1, fun2, name) {
  return fun1.call(name) + ' ' + fun2.call(name)
}

sayHiAndBye(sayHi, sayBye, { name: "Mateo" })

/////////////

function myForEach(array, func) {
  for (var i = 0; i < array.length; i++) {
    func(array[i], i)
  }
}

function myMap(array, func) {
  var tmp = []
  myForEach(array, function () {
    tmp.push(func(elem))
  })
  return tmp
}

function sumTotal(array, func) {
  var total = 0
  array.forEach(function(element) {
    if (func(element)) {
      total += element
    }
  })
  return total
}

function myFilter(array, func) {
  var tmp = []
  array.forEach(function(element) {
    if (func(element)) {
      tmp.push(element)
    }
  })
  return tmp
}
