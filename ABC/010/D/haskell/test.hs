import Data.Graph.Inductive.Graph
import Data.List

-- Grachが使えることがわかっただけで儲けもん
-- もちろん答えはわからない

ed = [(0,0,[1]),(1,1,[0,2,3]),(2,2,[1]),(3,3,[1])]

graph :: (Graph, Vertex -> (Int, Int, [Int]))
graph = graphFromEdges' ed

main :: IO ()
main = do
    undefined
    print $ bcc (fst graph)
