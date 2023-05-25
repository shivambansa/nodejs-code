const http = require('http');
const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hi, modified. \n\n\nNode running on port 3000! \n\nDeployed via AWS CodePipeline using blue green deployment on ec2.\nNew release!'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
