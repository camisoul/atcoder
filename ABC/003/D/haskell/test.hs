-- 100/101点回答

fact :: Integer -> Integer
fact 0 = 1
fact 1 = 1
fact n = n * fact (n - 1)

-- 長さRの区画から長さXの区画を求める組み合わせ
comb1 :: Integer -> Integer -> Integer
comb1 r x = r - x + 1

-- R*Cの区画にX*Yの区画がいくつ入るか
comb2 :: Integer -> Integer -> Integer -> Integer -> Integer
comb2 r c x y = comb1 r x * comb1 c y

-- D個のサーバとL個のラックをn個並べた重複順列
comb3 :: Integer -> Integer -> Integer
comb3 d l = (fact (d + l) `div` fact d) `div` fact l

solve :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer
solve r c x y d l = comb2 r c x y * comb3 d l `mod` 1000000007

getInteger :: IO [Integer]
getInteger = map (read :: String -> Integer) . words <$> getLine

main :: IO ()
main = do
    [r,c] <- getInteger
    [x,y] <- getInteger
    [d,l] <- getInteger
    print $ solve r c x y d l
