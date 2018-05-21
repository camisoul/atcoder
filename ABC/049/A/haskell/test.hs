main :: IO ()
main = do
    c <- getChar
    putStrLn $ if c `elem` "aeiou" then "vowel" else "consonant"
