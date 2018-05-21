import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.Char

f :: Int -> Int -> Int -> Bool
f a b n =
    let s x = foldr ((+) . digitToInt) 0 (show x)
    in a <= s n && s n <= b

main :: IO ()
main = do
    [n, a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ sum $ filter (f a b) [1..n]
