import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ if any (\x -> x `mod` 3 == 0) [a, b, a + b] then "Possible" else "Impossible"
