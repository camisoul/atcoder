{-# LANGUAGE OverloadedStrings #-}

-- OverloadedListsはメモリ使用率は変わらないがわずかに遅くなる
-- MutableなVectorとIORefを組み合わせるのが速い
-- インデックスの取得にO(n)がかかる普通のリストだとTLEになる

import qualified Data.Vector as V
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    n <- fst . fromJust . B.readInt <$> B.getLine
    as <- V.fromList . B.words <$> B.getLine
    let printn i = do
        B.putStr $ as V.! i
        B.putStr " "
    mapM_ printn [(n - 1), (n - 3) .. 0]
    mapM_ printn $ if odd n then [1, 3 .. (n - 1)] else [0, 2 .. (n - 1)]
