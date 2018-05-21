import Control.Monad

newtype Point = Point (Double, Double)
newtype Line  = Line (Point, Point)

cross :: Point -> Point -> Point -> Point -> Bool
cross (Point (ax,ay)) (Point (bx,by)) (Point (cx,cy)) (Point (dx,dy)) =
    let ta = (cx - dx) * (ay - cy) + (cy - dy) * (cx - ax)
        tb = (cx - dx) * (by - cy) + (cy - dy) * (cx - bx)
        tc = (ax - bx) * (cy - ay) + (ay - by) * (ax - cx)
        td = (ax - bx) * (dy - ay) + (ay - by) * (ax - dx)
    in tc * td < 0 && ta * tb < 0

crossLines :: Line -> Line -> Bool
crossLines (Line (p1,p2)) (Line (p3,p4)) = cross p1 p2 p3 p4

sides :: [Point] -> [Line]
sides [] = []
sides pss@(p:ps) = Line (last pss, p) : zipWith (curry Line) pss ps

solve :: Line -> [Point] -> Int
solve karate ps =
    let count = length [x | x <- map (`crossLines` karate) $ sides ps, x]
    in count `div` 2 + 1

main :: IO ()
main = do
    [ax,ay,bx,by] <- map read . words <$> getLine
    let karate = Line (Point (ax,ay),Point (bx,by))
    n <- readLn
    ps <- replicateM n $ do
        [x,y] <- map read . words <$> getLine
        return (Point (x,y))
    print $ solve karate ps
