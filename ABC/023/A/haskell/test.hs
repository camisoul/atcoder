main :: IO ()
main = do
    n <- readLn :: IO Int
    let (a, b) = n `divMod` 10
    print (a + b)
