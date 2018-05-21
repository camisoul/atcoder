import Data.Bits
import Data.IORef
import Control.Monad (replicateM_)

setNth :: [a] -> Int -> a -> [a]
setNth list n v = take n list ++ [v] ++ drop (n + 1) list

setXY :: [[a]] -> Int -> Int -> a -> [[a]]
setXY ary x y v = setNth ary x (setNth (ary !! x) y v)

type BitIndices = [Int]
type RelationShip = [[Bool]]

isRelation :: BitIndices -> RelationShip -> Bool
isRelation list relation = and [(relation !! x) !! y | x <- list, y <- list]

bitToIndices :: Int -> BitIndices
bitToIndices n = iter 0
    where
        iter i
            | n <= i     = []
            | otherwise = if testBit n i
                            then i : iter (i + 1)
                            else iter (i + 1)

newRelationShip :: Int -> RelationShip
newRelationShip n = [line x | x <- [0..(n - 1)]]
    where
        line m = replicate m False ++ [True] ++ replicate (n - m - 1) False

setRelationShip :: RelationShip -> Int -> Int -> RelationShip
setRelationShip relationship x y = setXY (setXY relationship x y True) y x True

maxRelationCount :: RelationShip -> Int
maxRelationCount relation =
    maximum $ map (\i ->
        let l = bitToIndices i
        in if isRelation l relation then length l else 1
        ) [0 .. (shiftL 1 (length relation) - 1)]

getList :: IO [Int]
getList = map read . words <$> getLine

main :: IO ()
main = do
    [n, m] <- getList
    relationShip <- newIORef $ newRelationShip n
    replicateM_ m $ do
        [x, y] <- getList
        modifyIORef relationShip (\r -> setRelationShip r (x - 1) (y - 1))
    readIORef relationShip >>= print . maxRelationCount
