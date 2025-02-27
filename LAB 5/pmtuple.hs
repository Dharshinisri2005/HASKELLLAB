import System.Environment (getArgs)
sumTuple :: (Int, Int) -> Int
sumTuple (x, y) = x + y
main :: IO ()
main = do
    args <- getArgs
    if length args /= 2
        then putStrLn "Please provide exactly two integers."
        else do
            let num1 = read (args !! 0) :: Int
            let num2 = read (args !! 1) :: Int
            let result = sumTuple (num1, num2)
            putStrLn ("The sum is: " ++ show result)

