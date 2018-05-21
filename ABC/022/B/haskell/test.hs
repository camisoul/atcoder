import Control.Monad
import Data.Maybe (fromJust)
import qualified Data.Set as S
import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    an <- replicateM n $ fst . fromJust . B.readInt <$> B.getLine
    print $ n - length (S.fromList an)
