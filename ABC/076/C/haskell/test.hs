import Data.Monoid
import Data.Maybe (fromMaybe)

change :: Char -> Char
change '?' = 'a'
change c = c

solve :: String -> String -> Int -> Maybe String
solve [] _ _ = Nothing
solve s t 0
    | length s < length t = Nothing
    | any (\(a, b) -> a /= '?' && a /= b) (zip s t) = Nothing
    | otherwise = Just (t ++ fmap change (drop (length t) s))
solve (x:xs) t n = (change x :) <$> solve xs t (n - 1)

main :: IO ()
main = do
    s <- getLine
    t <- getLine
    putStrLn $ fromMaybe "UNRESTORABLE" $ getLast $ foldMap Last $ fmap (solve s t) [0..length s]
