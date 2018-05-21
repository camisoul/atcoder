import Data.Maybe(fromJust)
import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    s <- B.getLine
    let a = B.elemIndex 'A' s
    let z = B.elemIndexEnd 'Z' s
    print $ fromJust z - fromJust a + 1
