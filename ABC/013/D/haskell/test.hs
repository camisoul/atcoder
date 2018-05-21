import Control.Monad
import Control.Monad.ST
import qualified Data.Vector as V
import qualified Data.Vector.Mutable as MV

solve n m d amida line = solve'
    where
        solve' = runST $ do
            as <- V.thaw $ V.fromList amida
            forM_ (reverse line) $ \a ->
                MV.swap as (a - 1) a
            V.freeze as

main :: IO ()
main = do
    let (n,m,d) = (5,7,1)
    let amida = [1 .. n]
    let line = [1,4,3,4,2,3,1]
    print $ solve n m d amida line
