import System.Environment (getArgs)

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

parseList :: String -> [Int]
parseList str = read str :: [Int]

main :: IO ()
main = do
  args <- getArgs
  case args of
    [listStr] -> do
      let list = parseList listStr
          reversedList = reverseList list
      putStrLn ("Reversed list: " ++ show reversedList)


