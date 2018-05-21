import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    ss <- replicateM n $ fst . fromJust . B.readInt <$> B.getLine
    let t = sum ss
    print $
        if t `mod` 10 /= 0
            then t
            else case filter (\x -> x `mod` 10 /= 0) ss of
                    [] -> 0 :: Int
                    xs -> t - minimum xs
