import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = do
    _ <- B.getLine
    -- 1行1数字の場合はgetContentsをlinesで分割したほうがかなり速い
    ts <- map (fst . fromJust . B.readInt) . B.lines <$> B.getContents
    print $ foldl1 lcm ts
