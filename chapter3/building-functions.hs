-- Write a function of type String -> Char which returns the third
-- character in a String.
thirdLetter :: String -> Char
thirdLetter x = x !! 2


-- Now change that function so the string input is always the same
-- and the variable represents the number of the letter you want to return
letterIdx :: Int -> Char
letterIdx x = "Curry is awesome!" !! (x - 1)


-- rvrs should take the string “Curry is awesome” and return the result 
-- “awesome is Curry.” This may not be the most lovely Haskell code you will 
-- ever write, but it is quite possible using only what we’ve learned so far.
rvrs = let text = "Curry is awesome"
           pos1 = take 5 text
           pos2 = take 2 (drop 6 text)
           pos3 = drop 9 text
       in pos3 ++ " " ++ pos2 ++ " " ++ pos1


-- Let’s see if we can expand that function into a module.
module MyReverse where

rvrs :: String -> String
rvrs text = let pos1 = take 5 text
                pos2 = take 2 (drop 6 text)
                pos3 = drop 9 text
            in pos3 ++ " " ++ pos2 ++ " " ++ pos1

main :: IO ()
main = print ((rvrs "Curry is awesome"))