React = require 'react'
ReactDOM = require 'react-dom'
text = require './text.js'
text.test()

class MainPage extends React.Component
    constructor: (@props) ->
        super @name
    render: ->
        <div>
            <input type="button" className="btn btn-primary" value="测试React" />
        </div>
ReactDOM.render(<MainPage />, document.getElementById('MainPage'));
