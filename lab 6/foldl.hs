getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    return (map read (words input))

productOfSquaredOdds :: [Int] -> Int
productOfSquaredOdds = foldl (*) 1 . map (^2) . filter odd

main :: IO ()
main = do
    nums <- getInput
    let result = productOfSquaredOdds nums
    putStrLn $ "The product of the squared odd numbers is: " ++ show result
