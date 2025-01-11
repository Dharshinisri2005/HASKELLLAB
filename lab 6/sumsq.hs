sumOfSquares :: [Int] -> Int
sumOfSquares = sum . map (^2) . filter (<= 10)

getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers:"
    input <- getLine
    return (map read (words input))

main :: IO ()
main = do
    nums <- getInput
    let result = sumOfSquares nums
    putStrLn $ "The sum of the squares of numbers <= 10 is: " ++ show result
