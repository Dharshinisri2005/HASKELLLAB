import Data.List (words)
firstElement :: Show a => [a] -> String
firstElement [] = "Empty list"  
firstElement (x:_) = "First element is " ++ show x 
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn (firstElement numbers)

