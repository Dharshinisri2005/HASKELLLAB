getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    return (map read (words input))

filterAndProcess :: [Int] -> Int
filterAndProcess = foldl (*) 1 . map (* 2) . filter (<= 10)

main :: IO ()
main = do
    nums <- getInput
    let result = filterAndProcess nums
    putStrLn $ "The product of the doubled numbers (<= 10) is: " ++ show result
