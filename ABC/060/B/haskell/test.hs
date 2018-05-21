import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let l = take (b `div` gcd a b) [n * a `mod` b | n <- [1..]]
    putStrLn $ if any (\x -> x `mod` b == c) l then "YES" else "NO"
