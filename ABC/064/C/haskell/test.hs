import Data.List
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    as <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let (bs, cs) = partition (< 3200) as
        c = length $ nub $ map (`div` 400) bs
    putStrLn $ show (max c 1) ++ " " ++ show (c + length cs)
