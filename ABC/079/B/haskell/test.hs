f :: [Integer]
f = 2 : 1 : zipWith (+) f (tail f)

main :: IO ()
main = readLn >>= print . (f !!)
