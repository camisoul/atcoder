modulo = 1000000007

power x 0 = 1
power x 1 = x `mod` modulo
power x y
    | even y    = (power x (y `div` 2) ^ 2) `mod` modulo
    | otherwise = (power x (y `div` 2) ^ 2) * x `mod` modulo

-- 収穫。メモライズ階乗
fact = (map mem [0 ..] !!)
    where
        mem 0 = 0
        mem 1 = 1
        mem n = n * fact (n-1) `mod` modulo

ifact n a = (n * power a (modulo - 2)) `mod` modulo

main :: IO ()
main = do
    let [a,b] = [5,3]
    -- 答えは間違っている
    print $ ifact (ifact (fact (a + b - 2)) (fact (a - 1))) (fact (b - 1))
