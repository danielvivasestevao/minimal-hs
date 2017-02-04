module Main
( main
) where

import           Test.HUnit
import           Add (add)
import qualified System.Exit as Exit

expectedResult = 8

testAdd = TestCase (assertEqual "test add 3 5" expectedResult (add 3 5))

tests = TestList [TestLabel "testAdd" testAdd]

main = do
    count <- Test.HUnit.runTestTT tests
    if Test.HUnit.failures count > 0
        then Exit.exitFailure
        else return ()