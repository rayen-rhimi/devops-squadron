var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Greetings from the DevOps Squadron!')
})

app.listen(80, function () {
  console.log('Listening on port 80...')
})
