import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let [alice, bob] = map (\x -> if x == 1 then 14 else x) [a, b]
    putStrLn $ [ "Alice", "Draw", "Bob" ] !! (signum (bob - alice) + 1)
