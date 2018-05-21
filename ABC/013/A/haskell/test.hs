import Data.Ix

main :: IO ()
main = getChar >>= \x -> print $ index ('A', 'E') x + 1
