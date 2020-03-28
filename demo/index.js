const express = require('express');
const app = express();

app.get('/', function (req, res) {
  res.send('Hello World from jaouan/theai-fullstack !');
});

app.listen(3000, function () {
  console.log('Demo listening on port 3000 !');
});
