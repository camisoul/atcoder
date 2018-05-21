import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    print $ (truncate (sqrt $ fromIntegral n :: Double) :: Int) ^ (2 :: Int)
