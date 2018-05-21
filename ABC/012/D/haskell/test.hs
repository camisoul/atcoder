import Data.List (maximumBy)
import Data.STRef (newSTRef, readSTRef, writeSTRef)
import Data.Array (Array)
import Data.Array.IO (IOArray, newArray, freeze, thaw)
import Data.Array.ST (STArray, readArray, writeArray, getBounds, getElems)
import Control.Monad (forM_, forM, replicateM_, when)
import Control.Monad.ST (ST, runST)

-- 0/100速度が足りていない
-- IOArrayのほうがSTArrayより速かった

data Node = Node {
    edgesTO   :: [Int],
    edgesCost :: [Int],
    nodeDone  :: Bool,
    nodeCost  :: Int
    } deriving (Show, Eq)
type FNodes = (Array Int Node)
type IONodes = IOArray Int Node
type Nodes s = STArray s Int Node

getDoneNodeIndex :: Nodes s -> ST s Int
getDoneNodeIndex nodes = do
    doneIndex <- newSTRef (-1::Int)
    (a,b) <- getBounds nodes
    forM_ [a..b] $ \i -> do
        n <- readArray nodes i
        x <- readSTRef doneIndex
        when (not (nodeDone n) && nodeCost n >= 0) $
            if x < 0
                then writeSTRef doneIndex i
                else do
                    d <- readArray nodes x
                    when (nodeCost n < nodeCost d) $ writeSTRef doneIndex i
    readSTRef doneIndex

-- getDoneNodeIndex :: [Node] -> Int
-- getDoneNodeIndex nodes = iter (-1) 0
--     where
--         iter i n
--             | n == length nodes                          = i + 1
--             | nodeDone node || nodeCost node < 0         = iter i (n + 1)
--             | i == -1 || nodeCost node < nodeCost done   = iter n (n + 1)
--             | otherwise                                  = iter i (n + 1)
--             where
--                 node = nodes !! n
--                 done = nodes !! i

calc :: Nodes s -> ST s ()
calc nodes = do
    i <- getDoneNodeIndex nodes
    when (i > 0) $ do
        done <- readArray nodes i
        writeArray nodes i (done { nodeDone = True })
        forM_ [0 .. length (edgesTO done) - 1] $ \x -> do
            let to      = edgesTO done !! x
            let cost    = nodeCost done + edgesCost done !! x
            node <- readArray nodes to
            when (nodeCost node < 0 || cost < nodeCost node) $ writeArray nodes to (node { nodeCost = cost } )
        calc nodes


-- calcCost :: Int -> Nodes -> IO Int
-- calcCost start nodes = do
--     s <- readArray nodes start
--     writeArray nodes start (s { nodeCost = 0 })
--     calc nodes
--     list <- getElems nodes
--     return $ nodeCost $ maximumBy (\a b -> compare (nodeCost a) (nodeCost b)) list

setNode :: Int -> Int -> Int -> IONodes -> IO ()
setNode n to cost nodes = do
    n1 <- readArray nodes n
    writeArray nodes n (n1 { edgesTO =  edgesTO n1 ++ [to], edgesCost = edgesCost n1 ++ [cost] })
    n2 <- readArray nodes to
    writeArray nodes to (n2 { edgesTO = edgesTO n2 ++ [n], edgesCost = edgesCost n2 ++ [cost] })
    return ()

calcCost :: Int -> Nodes s -> ST s Int
calcCost start nodes = do
    s <- readArray nodes start
    writeArray nodes start (s { nodeCost = 0 })
    calc nodes
    list <- getElems nodes
    return $ nodeCost $ maximumBy (\a b -> compare (nodeCost a) (nodeCost b)) list

main :: IO ()
main = do
    [n,m] <- map read . words <$> getLine :: IO [Int]
    input <- newArray (1,n) (Node [] [] False (-1)) :: IO IONodes
    replicateM_ m $ do
        [a,b,t] <- map read . words <$> getLine
        setNode a b t input
    baseNodes <- freeze input :: IO FNodes

    let list = runST $
            forM [1..n] $ \i -> do
                nodes <- thaw baseNodes
                calcCost i nodes
    print $ minimum list
