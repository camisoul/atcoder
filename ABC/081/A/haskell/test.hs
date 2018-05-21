main :: IO ()
main = getContents >>= print . length . filter (=='1')
