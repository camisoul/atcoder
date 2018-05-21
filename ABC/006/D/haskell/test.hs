import Control.Monad
import qualified Data.Vector.Unboxed as V

-- Data.SequenceよりData.Vector.Unboxedのほうが速い
-- Data.Vector.Unboxed.MutableにはfindIndexやappendがない
-- `//` は手作業による更新と同じくらいの速度

-- 最長部分増加列
upv :: V.Vector Int -> Int -> V.Vector Int
upv v x =
    case V.findIndex (> x) v of
        Just n  -> v V.// [(n,x)]
        Nothing -> v `V.snoc` x

main :: IO ()
main = do
    n <- readLn
    cs <- replicateM n readLn
    print $ n - V.length (foldl upv V.empty cs)
