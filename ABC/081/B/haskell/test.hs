import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let rs = until (any odd) (map (`div` 2)) as
    print $ f (head as) (head rs) (0 :: Int)
    where
        f a b n
            | a == b = n
            | otherwise = f (a `div` 2) b (n + 1)

