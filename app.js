const http = require('http');
const os = require('os');

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end(`Hello from Node.js app! Hostname: ${os.hostname()}\n`);
});

const PORT = 8080;
server.listen(PORT, () => console.log(`Server running on port ${PORT}`));

