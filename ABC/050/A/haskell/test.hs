{-# OPTIONS_GHC -fno-warn-type-defaults #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}

main :: IO ()
main = print =<< calc . words <$> getLine
    where
        calc [x,"+",y] = read x + read y
        calc [x,"-",y] = read x - read y

