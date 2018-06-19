import Control.Monad
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

move :: [Int] -> Bool
move [t, x, y] = abs x + abs y <= t && (x + y) `mod` 2 == t `mod` 2
move _ = False

main :: IO ()
main = do
    -- replicateMだと遅延評価効いてないので遅いし重い
    n <- fst . fromJust . B.readInt <$> B.getLine
    route <- replicateM n $ map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ if all move (scanl (flip (zipWith (-))) [0, 0, 0] route) then "Yes" else "No"
