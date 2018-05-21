import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

-- ViewPatternsでVectorのパターンマッチを行ってみたらTLE
-- MutableなVectorを使ってみたら若干遅くなった
-- sortがボトルネックになっているっぽい

main :: IO ()
main = do
    _ <- B.getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let ls = take 2 $ unfoldr f $ sortBy (flip compare) (0 : as)
    print $ if length ls == 2 then product ls else 0
    where
        f []    = Nothing
        f [_]   = Nothing
        f [_,_] = Nothing
        f (x:y:xs)
            | x == y    = Just (x, xs)
            | otherwise = f (y : xs)
