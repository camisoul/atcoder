-- getStrLn >>= putStrLn より interact のほうがかなり高速
main :: IO ()
main = interact solve
    where
        solve [] = ['\n']
        solve [x] = [x]
        solve (x:_:xs) = x : solve xs
