listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn ("The length of the list is: " ++ show (listLength numbers))

