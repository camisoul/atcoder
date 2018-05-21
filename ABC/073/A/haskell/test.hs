main :: IO ()
main = interact (\s -> if '9' `elem` s then "Yes\n" else "No\n")
