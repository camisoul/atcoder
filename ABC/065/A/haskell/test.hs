{-# LANGUAGE MultiWayIf #-}

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    [x, a, b] <- map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    putStrLn $ if | b - a <= 0 -> "delicious"
                  | b - a <= x -> "safe"
                  | otherwise  -> "dangerous"
