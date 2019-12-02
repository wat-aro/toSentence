module Main where

import           Test.HUnit
import           ToSentence (toSentence)

main :: IO ()
main = do
  _ <- runTestTT $ TestList
    [ toSentenceTest
    ]
  return ()


toSentenceTest :: Test
toSentenceTest = TestList
  [ "toSentence test 1" ~:
      toSentence [] ~?= ""
  , "toSentence test 2" ~:
      toSentence ["Dog"] ~?= "Dog"
  , "toSentence test 3" ~:
      toSentence ["Dog", "Cat"] ~?= "Dog and Cat"
  , "toSentence test 4" ~:
      toSentence ["Dog", "Cat", "Wolf"]   ~?= "Dog, Cat and Wolf"
  , "toSentence test 5" ~:
      toSentence ["Dog", "Cat", "Wolf", "Horse"]   ~?= "Dog, Cat, Wolf and Horse"
  ]
