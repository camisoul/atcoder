import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

fact :: Int -> Int
fact 1 = 1
fact i = i * fact (i - 1) `mod` 1000000007

main :: IO ()
main = print =<< fact . fst . fromJust . B.readInt <$> B.getLine
