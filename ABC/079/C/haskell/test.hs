import Data.Char
import Control.Monad

-- きれいに書ける

ops :: String -> [String]
ops [a, b, c, d] = do
    [(sp1, op1), (sp2, op2), (sp3, op3)] <- replicateM 3 [('+', (+)), ('-', (-))]
    guard (digitToInt a `op1` digitToInt b `op2` digitToInt c `op3` digitToInt d == 7)
    return $ a : sp1 : b : sp2 : c : sp3 : d : "=7"
ops _ = []

main :: IO ()
main = putStrLn . head . ops =<< getLine
