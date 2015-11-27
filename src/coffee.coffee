# The Existential Operator
lottery =
    drawWinner: () ->
        address:
            zipCode: 1
            road: 'xxx'
zip = lottery.drawWinner?().address?.zipCode
console.log zip
# destructor Assignment of array
[a, b] = [2, 1]
# destructor Assignment of array
weatherReport = (location) ->
    [location, 72, "Mostly Sunny"]
[city, temptuare, forcast] = weatherReport "Beijing"
console.log city, temptuare, forcast
# destructor Assignment of object
futurists =
  sculptor: "Umberto Boccioni"
  painter:  "Vladimir Burliuk"
  poet:
    name:   "F.T. Marinetti"
    address: [
      "Via Roma 42R"
      "Bellagio, Italy 22021"
    ]
poet = {poet: {name, address: [street, city]}} = futurists
console.log poet
tag = "Umberto Boccioni"
[start, ..., end] = tag.split("")
console.log start, end

# destructor Assignment of class property
class Person
    constructor: (options) ->
        {@name, @age, @height = 173} = options
jim = new Person name: 'Jim', age: '23', height: 172
console.log jim.age

# Bound function(=>)
App = (consumer) ->
    @consumer = consumer
    $('.text').on 'click', (event) =>
        console.log @consumer

# generator function
getUserInfo = (userId) ->
    yield getUserInfoFromDB userId

# Chained Comparisons
middle = 50

isMiddle =  100 > middle > 30

# String Interpolation
author = "good"
quote = "a picture is a fact -- #{author}"
sentence = "#{22 / 7} is a decent approximation of pai"

# Block String
html = """
    strong hello
    strong
    """
# Block comment
###
    this is Block comment
    this is Block comment
###
# Block Regex
# office demo can not run

