import System.Environment (getArgs)
import Data.List (intercalate)
listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] [] = []
listZipWith _ [] _ = []
listZipWith _ _ [] = []
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys

parseList :: String -> [Int]
parseList str = read str :: [Int]

main :: IO ()
main = do
  args <- getArgs
  case args of
    [list1, list2] -> do
      
      let n1 = parseList list1
          n2 = parseList list2
      
          add x y = x + y
          
          result = listZipWith add n1 n2
      putStrLn ("Result: " ++ show result)
