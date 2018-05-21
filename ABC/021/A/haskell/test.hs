import Control.Monad

main :: IO ()
main = do
    n <- readLn
    print n
    replicateM_ n $ print (1::Int)
