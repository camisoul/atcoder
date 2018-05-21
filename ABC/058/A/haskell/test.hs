import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine :: IO [Int]
    putStrLn $ if b - a == c - b then "YES" else "NO"
