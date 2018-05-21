-- IORefやSTRefを使うより、単一の再帰のほうが速い模様

tri :: Int -> Int
tri 1 = 0
tri 2 = 0
tri n = iter n 0 0 1
    where
        iter 3 _ _ c = c
        iter m a b c = iter (m - 1) b c ((a + b + c) `mod` 10007)

main :: IO ()
main = readLn >>= print . tri
