      * Compile this file together with the node.cobol
      * modules:
      *
      *  $ cobc -x example/main.cbl lib/node-exec*.cbl
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
