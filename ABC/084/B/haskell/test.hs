import Data.List.Split
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    s <- getLine
    putStrLn $ case splitOn "-" s of
        [as, bs] -> if length as == a && length bs == b then "Yes" else "No"
        _        -> "No"
