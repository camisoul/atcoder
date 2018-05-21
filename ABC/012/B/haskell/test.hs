main :: IO ()
main = do
    n <- readLn :: IO Int
    let (h,hm)  = divMod  n 3600
        (m,s)   = divMod hm 60
    putStrLn $ toStr h ++ ":" ++ toStr m ++ ":" ++ toStr s
    where
        toStr s
            | s < 10    = '0' : show s
            | otherwise = show s

