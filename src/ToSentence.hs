module ToSentence where

toSentence :: [String] -> String
toSentence []     = ""
toSentence [x]    = x
toSentence [x, y] = x <> " and " <> y
toSentence (x:xs) = x <> ", " <> toSentence xs
