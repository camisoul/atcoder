import Control.Monad
import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Bits (popCount, (.&.))
import Data.Maybe (fromJust)
import Data.Char (digitToInt)

-- バイナリを数値に直す
readBin :: String -> Int
readBin = foldl' (\a x -> a * 2 + digitToInt x) 0

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    fs <- replicateM n $ readBin . filter (/= ' ') <$> getLine
    ps <- replicateM n $ map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    -- ここランダムアクセス多いからもっと効率的に
    ans <- forM [1..1023 :: Int] $ \b ->
        return $ foldl (\x i -> x + (ps !! i) !! popCount ((fs !! i) .&. b)) 0 [0..n - 1]
    print $ maximum ans
