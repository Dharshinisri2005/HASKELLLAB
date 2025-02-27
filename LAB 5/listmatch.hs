import Data.List (words)
listElement :: Show a => [a] -> String
listElement [] = "Empty list"
listElement xs = "List elements are: " ++ unwords (map show xs)
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn (listElement numbers)

