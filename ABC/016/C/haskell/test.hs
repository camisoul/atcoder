import Data.List
import Control.Monad
import Data.Maybe (fromMaybe)
import Data.Function (on)

solveN :: Int -> [(Int,Int)] -> Int
solveN i xs =
    let ys = sortOn fst $ xs ++ [(b, a)| (a, b) <- xs]
        zs = groupBy ((==) `on` fst) ys
        friends n = map snd $ fromMaybe [] $ find (\x -> (fst . head) x == n) zs
        allFriendsOfFriends n = nub $ concatMap friends (friends n)
        selfAndFriends n = n : friends n
        friendsOfFriends n = allFriendsOfFriends n \\ selfAndFriends n
    in length $ friendsOfFriends i

main :: IO ()
main = do
    [n,m] <- map read . words <$> getLine
    xs <- replicateM m $ do
        [a,b] <- map read . words <$> getLine
        return (a,b)
    forM_ [1..n] $ \i -> print $ solveN i xs
