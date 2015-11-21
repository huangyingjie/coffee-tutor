React = require 'react'
ReactDOM = require 'react-dom'

class MainPage extends React.Component
    constructor: (@props) ->
        super @name
    render: ->
        <div>
            <input type="button" className="btn btn-primary" value="测试React" />
        </div>
ReactDOM.render(<MainPage />, document.getElementById('MainPage'));
