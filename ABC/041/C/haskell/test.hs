import Data.List
import Data.Maybe (fromJust)
import Data.Function (on)
import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    n <- readLn :: IO Int
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine :: IO [Int]
    putStr $ unlines $ map (show . fst) $ sortBy (flip compare `on` snd) $ zip [1..n] as
