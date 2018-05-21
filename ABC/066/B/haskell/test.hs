import Data.ByteString.Char8 as B

solve :: ByteString -> Int
solve ss =
    let (a, b) = B.splitAt (B.length ss `div` 2) ss
    in if a == b then B.length ss else solve (B.init ss)

main :: IO ()
main = print =<< solve . B.init <$> B.getLine
