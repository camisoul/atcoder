import System.IO
import System.IO.Unsafe
import Data.IORef

-- 300/300

{-# NOINLINE qcount #-}
qcount :: IORef Int
qcount = unsafePerformIO $ newIORef (0 :: Int)

query :: Char -> Char -> Bool
query c1 c2 = unsafePerformIO $ do
    modifyIORef qcount pred
    r <- readIORef qcount
    if r >= 0
        then do
            putStrLn $ "? " ++ [c1] ++ " " ++ [c2]
            hFlush stdout
            ans <- getLine
            case ans of
                "<" -> return True
                ">" -> return False
                _   -> return True
        else return True

qmerge :: String -> String -> String
qmerge xs [] = xs
qmerge [] ys = ys
qmerge (x:xs) (y:ys)
    | query x y = x : qmerge xs (y:ys)
    | otherwise = y : qmerge (x:xs) ys

-- マージソート
-- 要素数が5ならカスタムソートを呼び出す
msort :: String -> String
msort []  = []
msort [x] = [x]
msort [a,b,c,d,e] = fivesort [a,b,c,d,e]
msort xs = qmerge (msort (take h xs)) (msort (drop h xs))
    where
        h = length xs `div` 2

-- 最悪の場合の比較回数の下限は logBase 2 n! で求められる
-- 比較回数が最小になる汎用のソートアルゴリズムはない
-- 少ない要素数に対してはMERGE INSERTION(Ford-Johnson)が優位
--
-- 5要素の最小比較数ソート
-- 1. AとBを比較し交換(1回)
-- 2. CとDを比較し交換(1回)
-- 3. AとCを比較しABとCDを交換(1回)
-- 4. EをACDに挿入する(Cと比較し、その後ADのどちらかと比較で2回)
-- 5. BをECDに挿入する(Cと比較し、その後EDのどちらかと比較で2回)

fivesort [a,b,c,d,e] = check1 [a,b,c,d,e]
check1 [a,b,c,d,e]
    | query b a = check2 [b,a,c,d,e]
    | otherwise = check2 [a,b,c,d,e]
check2 [a,b,c,d,e]
    | query d c = check3 [a,b,d,c,e]
    | otherwise = check3 [a,b,c,d,e]
check3 [a,b,c,d,e]
    | query c a = check4 [c,d,a,b,e]
    | otherwise = check4 [a,b,c,d,e]
check4 [a,b,c,d,e]
    | query c e =
        if query d e
            then
                if query d b
                    then
                        if query e b
                            then [a,c,d,e,b]
                            else [a,c,d,b,e]
                    else
                        if query b c
                            then [a,b,c,d,e]
                            else [a,c,b,d,e]

            else
                if query e b
                    then
                        if query d b
                            then [a,c,e,d,b]
                            else [a,c,e,b,d]
                    else
                        if query b c
                            then [a,b,c,e,d]
                            else [a,c,b,e,d]
    | otherwise =
        if query e a
            then
                if query c b
                    then
                        if query d b
                            then [e,a,c,d,b]
                            else [e,a,c,b,d]
                    else [e,a,b,c,d]
            else
                if query c b
                    then
                        if query d b
                            then [a,e,c,d,b]
                            else [a,e,c,b,d]
                    else
                        if query b e
                            then [a,b,e,c,d]
                            else [a,e,b,c,d]

main :: IO ()
main = do
    [n,q] <- map read . words <$> getLine :: IO [Int]
    writeIORef qcount q
    let list = take n ['A' .. 'Z']
    putStrLn $ "! " ++ msort list
    hFlush stdout
