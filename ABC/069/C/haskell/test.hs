import qualified Data.Vector.Unboxed as V
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

-- 量が多いときはfromListのコストを考えてもVectorにしたほうがやっぱり速い
-- 量が少ないときはfromListのコストが上回るので少し遅くなるが、1ms単位

main :: IO ()
main = do
    _ <- B.getLine
    as <- V.fromList . map (fst . fromJust . B.readInt) . B.words <$> B.getLine
    let (v1, vs) = V.unstablePartition odd as
        v4 = V.filter (\x -> x `mod` 4 == 0) vs
    let b1 = V.length v1
        b4 = V.length v4
        b2 = V.length as - b1 - b4
    putStrLn $ if b2 == 0
                then if b1 <= b4 + 1 then "Yes" else "No"
                else if b1 <= b4     then "Yes" else "No"
