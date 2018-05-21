import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    k <- fst . fromJust . B.readInt <$> B.getLine
    xs <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    print $ sum $ map (\x -> min (x * 2) (abs (k - x) * 2)) xs
