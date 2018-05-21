accessory :: Int -> String -> Bool
accessory _ [] = True
accessory n s
    | n `mod` 3 == 0 = head s == 'b' && accessory (n - 1) (middle s) && last s == 'b'
    | n `mod` 3 == 1 = head s == 'a' && accessory (n - 1) (middle s) && last s == 'c'
    | n `mod` 3 == 2 = head s == 'c' && accessory (n - 1) (middle s) && last s == 'a'
    where
        middle x = drop 1 (init x)
accessory _ _ = False

main :: IO ()
main = do
    n <- readLn :: IO Int
    s <- getLine
    let c = n `div` 2
    if accessory c s
        then print c
        else print (-1 :: Int)
