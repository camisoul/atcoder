import Data.List

-- 最上位桁の数字
headDigit :: Integer -> Integer
headDigit n = read [head $ show n]
-- 最上位桁を除いた数字
tailDigit :: Integer -> Integer
tailDigit n = read $ tail $ show n
-- 桁数
digitCount :: Integer -> Integer
digitCount n = genericLength $ show n

-- z桁の数までの4と9が含まれる数値の個数
forbiddenEachDigit :: Integer -> Integer
forbiddenEachDigit n = 10 ^ n - 8 ^ n
-- 10000など、n桁の数値の単位あたりに含まれる4と9の個数
baseCount :: Integer -> Integer
baseCount n = forbiddenEachDigit $ digitCount n - 1

-- 累積でいくつ禁止数値が含まれるか
forbiddenCount :: Integer -> Integer
forbiddenCount n
    | n < 4             = 0
    | n < 9             = 1
    | n == 9            = 2
    | hd <= 3 = hd * baseCount n + forbiddenCount (tailDigit n)
    | hd == 4 = hd * baseCount n + tailDigit n + 1
    | hd <= 8 = hd * baseCount n + forbiddenCount (tailDigit n) + (10 ^ (digitCount n - 1) - baseCount n)
    | hd == 9 = hd * baseCount n + tailDigit n + 1 + (10 ^ (digitCount n - 1) - baseCount n)
    where
        hd = headDigit n
forbiddenCount _ = 0

main :: IO ()
main = do
    [a, b] <- map read . words <$> getLine
    print $ forbiddenCount b - forbiddenCount (a - 1)

    -- print $ length $ filter isForbidden [0..100]
    -- print $ map forbiddenCount [40..49]

-- 禁止数値かどうか
isForbidden :: Integer -> Bool
isForbidden n = '4' `elem` show n || '9' `elem` show n

