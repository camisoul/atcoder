import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, y] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let t = [[1, 3, 5 ,7, 8, 10, 12], [4, 6, 9, 11], [2]]
        s g = elem x g && elem y g
    putStrLn $ if foldl (\r g -> s g || r) False t then "Yes" else "No"
