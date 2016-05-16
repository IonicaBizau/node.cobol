      * Compile this file together with the node.cobol modules:
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
          01 NODEJS-CODE PIC X(100) value "console.log('Hello!')".

       PROCEDURE DIVISION.
      * Execute a short Node.js snippet
           CALL 'EXEC_NODEJS' USING NODEJS-CODE

           DISPLAY "Starting an HTTP server on port 8000".

      * Starting an HTTP server in Node.js
           CALL 'EXEC_NODEJS_FILE' USING "example/server.js".
       STOP RUN.
