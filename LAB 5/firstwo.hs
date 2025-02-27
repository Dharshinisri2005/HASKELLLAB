firstTwoElements :: [a] -> [a]
firstTwoElements (x:y:_) = [x, y] 
firstTwoElements xs = xs        
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print (firstTwoElements numbers)

