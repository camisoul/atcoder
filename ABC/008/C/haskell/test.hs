import Data.List

-- コインを最後までターンした結果を返す
turn :: [(Int, Bool)] -> [(Int, Bool)]
turn cs = turn' (length cs) (0::Int) cs
    where
    turn' _ _ [] = []
    turn' n m (x:xs) = left ++ turn' n (m + 1) [flipcoin coin | coin <- right]
        where
            left   = [x]
            number = fst x
            right  = xs
            flipcoin (a, b) = if a `mod` number == 0 then (a, not b) else (a, b)

-- 総試行回数
fact :: Int -> Int
fact 0 = 1
fact 1 = 1
fact n = n * fact (n - 1)

-- コインの出目をひとつのリストにまとめたもの
demeList :: [Int] -> [(Int, Bool)]
demeList list = concatMap (\rs ->
    let coins = zip rs (replicate (length rs) True)
    in turn coins
    ) (permutations list)

-- 出目リストから表が出た回数を取得する
headCount :: [(Int, Bool)] -> Int
headCount = foldl (\s (_,b) -> if b then s + 1 else s) 0

main :: IO ()
main = do
    n <- readLn :: IO Int
    list <- mapM (\_ -> readLn :: IO Int) [1..n]
    let total = realToFrac (headCount $ demeList list)
        count = realToFrac (fact n)
        expected = total / count :: Double
    print expected
