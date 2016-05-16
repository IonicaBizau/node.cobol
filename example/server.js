"use strict";

const http = require("http");

http.createServer((req, res) => {
    res.end("Hello world from an Node.js http server executed in COBOL!");
}).listen(8000);
