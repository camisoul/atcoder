import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ if odd (a * b) then "Odd" else "Even"
