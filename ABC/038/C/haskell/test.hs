import Data.List
import Data.Maybe (fromJust)
import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    _ <- getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    -- 詰めすぎ
    print $ length as + sum (map (\f -> (length f * (length f + 1)) `div` 2) $ filter (\f -> head f > 0) $ groupBy (\a b -> a >= 1 && b >= 1) $ zipWith (-) (tail as) as)
