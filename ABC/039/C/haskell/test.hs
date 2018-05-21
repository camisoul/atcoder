main :: IO ()
main = do
    s <- getLine
    putStrLn $ case take 12 s of
                "WBWBWWBWBWBW" -> "Do"
                "WBWWBWBWBWWB" -> "Re"
                "WWBWBWBWWBWB" -> "Mi"
                "WBWBWBWWBWBW" -> "Fa"
                "WBWBWWBWBWWB" -> "So"
                "WBWWBWBWWBWB" -> "La"
                "WWBWBWWBWBWB" -> "Si"
                _              -> ""
