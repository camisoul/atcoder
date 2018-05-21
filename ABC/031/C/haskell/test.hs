import Data.List
import Data.Maybe (fromJust)

-- 高橋がn番目の要素を選択した時、青木が取れる手
aoki :: [Int] -> Int -> [[Int]]
aoki [] _ = [[]]
aoki as n = left ++ right
    where
        left = do
            x <- [0..(n - 1)]
            return $ drop x $ take (n + 1) as
        right = do
            x <- [2..(length as - n)]
            return $ take x $ drop n as

oddElem :: [a] -> [a]
oddElem [] = []
oddElem (x:_:ys) = x : oddElem ys
oddElem (x:_) = [x]

scoreT, scoreA :: [Int] -> Int
scoreT cs = sum $ oddElem cs
scoreA cs = sum cs - scoreT cs

-- 期待獲得スコア
score :: [Int] -> Int -> Int
score as n =
    let m = map scoreA (aoki as n)
        i = fromJust $ elemIndex (maximum m) m
    in scoreT $ aoki as n !! i

main :: IO ()
main = do
    _ <- readLn :: IO Int
    as <- map read . words <$> getLine :: IO [Int]
    print $ maximum $ map (score as) [0..(length as - 1)]
