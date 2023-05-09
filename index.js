const http = require('http');
const port = process.env.PORT || 8000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hi, changed some code. \n\n\nNode running at 8000! \n\n Deployed via ansible-playbook using jenkins.'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
