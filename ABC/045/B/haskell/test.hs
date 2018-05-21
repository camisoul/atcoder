next [] _ _ 'a' = "A"
next _ [] _ 'b' = "B"
next _ _ [] 'c' = "C"
next (a:as) (b:bs) (c:cs) p
    | p == 'a' = next as (b:bs) (c:cs) a
    | p == 'b' = next (a:as) bs (c:cs) b
    | p == 'c' = next (a:as) (b:bs) cs c

main :: IO ()
main = do
    undefined
    print $ next "abcb" "aacb" "bccc" 'a'
