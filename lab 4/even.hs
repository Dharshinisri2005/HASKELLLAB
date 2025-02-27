import System.Environment (getArgs)
filterEven :: [Int] -> [Int]
filterEven xs = filter even xs  
main :: IO ()
main = do
  args <- getArgs
  case args of
    [x] -> do
      let n1 = read x :: [Int]  
      putStrLn ("even numbers: " ++ show (filterEven n1))
   
