import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b, c] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ if a <= c && c <= b then "Yes" else "No"
