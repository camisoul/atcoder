import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let t n = abs (n - x)
    putStrLn $ if t a < t b then "A" else "B"
