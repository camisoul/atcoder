import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    print $ fromJust $ find (<= n) [64,32,16,8,4,2,1]
