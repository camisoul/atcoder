import Control.Monad

main :: IO ()
main = readLn >>= flip replicateM (readLn :: IO Int) >>= print . minimum
