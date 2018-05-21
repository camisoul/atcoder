import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [n, y] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let ans = [[a, b, n - a - b] | a <- [0..n], b <- [0..(n - a)], 9 * a + 4 * b == y `div` 1000 - n && n - a - b >= 0]
    if null ans
        then putStrLn "-1 -1 -1"
        else do
            let [a, b, c] = head ans
            putStrLn $ show a ++ " " ++ show b ++ " " ++ show c
