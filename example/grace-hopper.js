"use strict";

const imgToAscii = require("image-to-ascii");

imgToAscii(
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Commodore_Grace_M._Hopper%2C_USN_%28covered%29.jpg/220px-Commodore_Grace_M._Hopper%2C_USN_%28covered%29.jpg"
  , { bg: true }
  , (err, data) => console.log((err || data)
  + `\n${" ".repeat(20)}* * * Rear Admiral Grace M. Hopper * * *`
  )
);
