sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    userInput <- getLine
    let nums = map read (words userInput) :: [Int]
    let result = sumList nums
    putStrLn ("The sum of the list " ++ show nums ++ " is " ++ show result)
