A minimal working Haskell project using Cabal and the exitcode-stdio-1.0 test suite with HUnit.

Run `cabal configure --enable-tests` and `cabal build` to build the project, `cabal test` to run tests and `cabal run` to execute the main module.


The project just consists of three Haskell files:
* src/
  * Add.hs  - A library with only one function which adds two numbers and returns the value.
  * Main.hs - The executable of the project. To showcase that the Add library works, it executes `add 3 5` and prints the result.
* test/
  * TestAdd.hs - A minimal test of the Add library using HUnit. Executes `add 3 5` and tests if the result is equals to `8`. Contains all necessary boilerplate code to make the test work with the `exitcode-stdio-1.0` test suite.

All other files bar the `README.md` are automagically generated with `cabal init`. `minimal.cabal` has of course been modified afterwards to make the whole project work.


I got really confused the first time I tried to set up a working Haskell project with Cabal; especially one with _working_ test files! So I made this project as a blank slate of some sort for similar projects. I hope this helps Haskell/Cabal beginners out.