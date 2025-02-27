import System.Environment (getArgs) 

multiply :: [Int] -> Int -> [Int] 

multiply xs n = [x * n | x <- xs] 

  

main :: IO () 

main = do 

  args <- getArgs 

  case args of 

    (x:y:[]) -> do 

      let n1 = read x :: [Int] 

          n2 = read y :: Int 

      putStrLn ("Final list: " ++ show (multiply n1 n2)) 
