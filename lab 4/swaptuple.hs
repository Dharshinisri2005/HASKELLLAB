import System.Environment (getArgs)

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)
main :: IO ()
main = do
  args <- getArgs
  case args of
    [x, y] -> do
      let n1 = read x :: Int
          n2 = read y :: Int
      putStrLn ("Swapped tuple: " ++ show (swap (n1, n2)))
    

