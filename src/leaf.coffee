$ = require 'jquery'
leaf = 
    number: 42
    level: 5
    count: () -> @number * @level
    bindEvent: (eventname, target) ->
        $(target).on eventname, (event) ->
            console.log event.target.className
module.exports = leaf
