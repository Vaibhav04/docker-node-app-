const app = require('express')();

app.get('/', (req, res) => {
  res.send('Welcome to home page...');
});

app.listen(4000, (req, res) => {
  console.log('Listening on port 3000');
});
