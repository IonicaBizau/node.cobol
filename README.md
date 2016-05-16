
[![node.cobol](http://i.imgur.com/0ZqQ14H.png)](#)

# node.cobol

 [![PayPal](https://img.shields.io/badge/%24-paypal-f39c12.svg)][paypal-donations] [![AMA](https://img.shields.io/badge/ask%20me-anything-1abc9c.svg)](https://github.com/IonicaBizau/ama) [![Version](https://img.shields.io/npm/v/node.cobol.svg)](https://www.npmjs.com/package/node.cobol) [![Downloads](https://img.shields.io/npm/dt/node.cobol.svg)](https://www.npmjs.com/package/node.cobol) [![Get help on Codementor](https://cdn.codementor.io/badges/get_help_github.svg)](https://www.codementor.io/johnnyb?utm_source=github&utm_medium=button&utm_term=johnnyb&utm_campaign=github)

> Node.js bridge for COBOL which allows you to run Node.js code from COBOL.

[![node.cobol](http://i.imgur.com/kUlpHyB.png)](#)

You have to install [Node.js](https://nodejs.org/en/) on
your machine. In case you do not have a COBOL compiler,
you can install it by running:
```sh
# Ubuntu
sudo apt-get install open-cobol

# OS X
brew install gnu-cobol
```

## :clipboard: Example



```cobol
      * Compile this file together with the node.cobol
      * modules:
      *
      *  $ cobc -x example/main.cbl lib/node-exec-*
      *
      * Then execute the binary file:
      *
      *  $ ./main
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.

       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 NODEJS-CODE PIC X(100) value "console.log('Hello World!')".

       PROCEDURE DIVISION.
      * Execute a short Node.js snippet
           CALL 'EXEC_NODEJS' USING NODEJS-CODE

           DISPLAY "Starting an HTTP server on port 8000".

      * Convert an image into ASCII/ANSI art
           CALL 'EXEC_NODEJS_FILE' USING "example/grace-hopper.js"

           DISPLAY "Starting an HTTP server on port 8000".

      * Starting an HTTP server in Node.js
           CALL 'EXEC_NODEJS_FILE' USING "example/server.js".
       STOP RUN.
```

To compile the program, use:
```sh
cobc -x example/main.cbl lib/node-exec-*
```

## :memo: Documentation

The COBOL modules from the [`lib/`](/lib) directory export the following subroutines:
### `EXEC_NODEJS(code)`

 - `code`: The Node.js snippet to execute.

### `EXEC_NODEJS_FILE(file)`

 - `file`: The Node.js file path.


## :yum: How to contribute
Have an idea? Found a bug? See [how to contribute][contributing].

## :sparkles: Related

 - [`cobol`](https://github.com/IonicaBizau/node-cobol)—COBOL bridge for NodeJS which allows you to run COBOL code from NodeJS.



## :scroll: License

[MIT][license] © [Ionică Bizău][website]

[paypal-donations]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RVXDDLKKLQRJW
[donate-now]: http://i.imgur.com/6cMbHOC.png

[license]: http://showalicense.com/?fullname=Ionic%C4%83%20Biz%C4%83u%20%3Cbizauionica%40gmail.com%3E%20(http%3A%2F%2Fionicabizau.net)&year=2016#license-mit
[website]: http://ionicabizau.net
[contributing]: /CONTRIBUTING.md
[docs]: /DOCUMENTATION.md
