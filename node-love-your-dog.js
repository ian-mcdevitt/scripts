var http = require('http');
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Spend some time with your dog instead\n');
}).listen(80);
console.log('Server running at http://127.0.0.1:80/');